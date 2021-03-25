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
    dynamic body,
    File? file,
  }) async {
    return {} as T;
  }

  void close() => _client.close();
}
