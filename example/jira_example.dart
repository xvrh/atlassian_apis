import 'dart:convert';
import 'dart:io';
import 'package:atlassian_apis/service_management.dart';

void main() async {
  var user = Platform.environment['ATLASSIAN_USER']!;
  var apiToken = Platform.environment['ATLASSIAN_API_TOKEN']!;
  var client = ApiClient.basicAuthentication(
      Uri.https('<host>.atlassian.net', ''),
      user: user,
      apiToken: apiToken);
  var serviceManagement = ServiceManagementApi(client);

  var info = await serviceManagement.info.getInfo();
  print(jsonEncode(info.toJson()));

  client.close();
}
