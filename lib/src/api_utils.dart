import 'dart:io';

import 'package:http/http.dart';
export 'package:http/http.dart' show Client;

export 'dart:io' show File;

class ApiClient {
  final Client _client;

  ApiClient(this._client);

  Future<T> send<T>(
    String method,
    String path, {
    Map<String, String>? pathParameters,
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
    dynamic body,
    File? file,
  }) async {
    if (file != null) {
      // add header no-check
    }

    return {} as T;
  }

  void close() => _client.close();
}
