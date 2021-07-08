//---- example

import 'dart:convert';
import 'dart:io';
import 'package:atlassian_apis/service_management.dart';
import 'package:http/http.dart';
import 'package:path/path.dart' as path;

void main() async {
  // Create the API for Service Desk
  var serviceManagement = ServiceManagementApi(apiClient);

  // Fetch some data
  var desks = await serviceManagement.servicedesk.getServiceDesks();
  printJson(desks);

  // Create a new customer
  var newCustomer = await serviceManagement.customer
      .createCustomer(body: CustomerCreateDTO(email: '..', displayName: '...'));
  printJson(newCustomer);

  // Upload a file
  var file = File('some_file.png');
  var attachment = await serviceManagement.servicedesk.attachTemporaryFile(
      serviceDeskId: 1,
      file: MultipartFile('file', file.openRead(), file.lengthSync(),
          filename: path.basename(file.path)));

  // Create a new customer request with attachment
  await serviceManagement.request.createCustomerRequest(
      body: RequestCreateDTO(requestFieldValues: {
    'summary': 'The issue summary',
    'attachment': attachment.temporaryAttachments
        .map((e) => e.temporaryAttachmentId)
        .toList()
  }));
}
//----

ApiClient get apiClient => throw UnimplementedError();

void printJson(object) {
  print(jsonEncode(object));
}
