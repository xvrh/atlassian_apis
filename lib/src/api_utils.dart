import 'package:http/http.dart';
export 'package:http/http.dart' show Client;

class ApiClient {
  final Client _client;

  ApiClient(this._client);

  Future<T> send<T>(
    String method,
    String path, {
    Map<String, String>? pathParameters,
    Map<String, String>? queryParameters,
    dynamic body,
  }) async {
    return {} as T;
  }

  void close() => _client.close();
}
