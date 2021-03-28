import 'dart:convert';
import 'package:atlassian_apis/service_management.dart';

void main() async {
  var user = '<user>';
  var apiToken = '<token>';
  var client = ApiClient.basicAuthentication('<host>.atlassian.net',
      user: user, apiToken: apiToken);
  var serviceManagement = ServiceManagementApi(client);

  var info = await serviceManagement.info.getInfo();
  print(jsonEncode(info.toJson()));

  client.close();
}
