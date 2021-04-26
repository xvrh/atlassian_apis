import 'dart:convert';
import 'dart:io';
import 'package:atlassian_apis/service_management.dart';
import 'package:http/http.dart';

void main() async {
  var serviceManagement = ServiceManagementApi(apiClient);

  var desks = await serviceManagement.servicedesk.getServiceDesks();
  dumpJson(desks);

  var requestTypes = await serviceManagement.requesttype.getAllRequestTypes();
  dumpJson(requestTypes);

  var newCustomer = await serviceManagement.customer
      .createCustomer(body: CustomerCreateDTO(email: '..', displayName: '...'));
  dumpJson(newCustomer);
  
  await serviceManagement.servicedesk.attachTemporaryFile(serviceDeskId: 1, file: MultipartFile(field, stream, length))
}

ApiClient get apiClient => throw UnimplementedError();

void dumpJson(object) {
  print(jsonEncode(object));
}
