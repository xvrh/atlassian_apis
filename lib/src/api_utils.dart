import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
export 'package:http/http.dart' show Client;
export 'dart:io' show File;

class ApiClient {
  static const _headerAtlassianToken = 'X-Atlassian-Token';
  static const _headerExperimental = 'X-ExperimentalApi';

  final Client _client;
  final String _host;

  ApiClient(this._host, this._client) : assert(!_host.contains('/'));

  factory ApiClient.basicAuthentication(String host,
      {required String user, required String apiToken, Client? client}) {
    client ??= Client();
    return ApiClient(host,
        BasicAuthenticationClient(client, user: user, apiToken: apiToken));
  }

  Future<T> send<T>(
    String method,
    String pathTemplate, {
    Map<String, String>? pathParameters,
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
    dynamic body,
    File? file,
  }) async {
    var path = pathTemplate;

    if (pathParameters != null) {
      for (var pathParameter in pathParameters.entries) {
        path = path.replaceAll(
            '{${pathParameter.key}}', Uri.encodeComponent(pathParameter.value));
      }
    }
    assert(!path.contains('{'));

    var uri = Uri.https(_host, path);
    if (queryParameters != null) {
      uri = uri.replace(queryParameters: {
        ...uri.queryParameters,
        ...queryParameters,
      });
    }

    var request = Request(method, uri);
    if (body != null) {
      request
        ..headers[HttpHeaders.contentTypeHeader] = 'application/json'
        ..body = jsonEncode(body);
    }
    if (headers != null) {
      request.headers.addAll(headers);
    }
    if (file != null) {
      request.headers[_headerAtlassianToken] ??= 'no-check';
    }
    request.headers[_headerExperimental] = 'opt-in';

    var response = await Response.fromStream(await _client.send(request));
    ApiException.checkResponse(response);

    var decoded = _decode(response);
    return decoded as T;
  }

  dynamic _decode(Response response) {
    var bytes = response.bodyBytes;
    if (bytes.isEmpty) return null;

    var responseBody = utf8.decode(bytes);
    return jsonDecode(responseBody);
  }

  void close() => _client.close();
}

class ApiException implements Exception {
  final Uri? url;
  final int statusCode;
  final String? reasonPhrase;
  final String? errorMessage;

  ApiException(this.url, this.statusCode, this.reasonPhrase,
      {this.errorMessage});

  factory ApiException.fromResponse(Response response) {
    String? errorMessage;
    if (response.body.isNotEmpty) {
      try {
        var decodedBody = jsonDecode(response.body);
        if (decodedBody is Map<String, dynamic>) {
          // TODO(xha): find out the format
          errorMessage = decodedBody['message'] as String? ??
              decodedBody['errorMessage'] as String?;
        } else {
          decodedBody = '$decodedBody';
        }
      } catch (e) {
        // Fail to parse as Json

      }
      errorMessage ??= response.body;
    }
    return ApiException(
        response.request?.url, response.statusCode, response.reasonPhrase,
        errorMessage: errorMessage);
  }

  @override
  String toString() =>
      'JiraException($statusCode, $reasonPhrase, url: $url, message: $errorMessage)';

  static void checkResponse(Response response) {
    if (response.statusCode >= 200 && response.statusCode < 400) return;
    throw ApiException.fromResponse(response);
  }
}

class BasicAuthenticationClient extends BaseClient {
  final Client innerClient;
  final String user, apiToken;

  BasicAuthenticationClient(this.innerClient,
      {required this.user, required this.apiToken});

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    request.headers['Authorization'] =
        'Basic ${base64Encode(ascii.encode('$user:$apiToken'))}';
    return innerClient.send(request);
  }

  @override
  void close() {
    innerClient.close();
    super.close();
  }
}
