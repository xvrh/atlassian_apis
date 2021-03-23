import 'package:http/http.dart';
import 'package:jira/service_management.dart';

void main() {
  var client = Client();
  var serviceManagement = ServiceManagementApi(client);

  serviceManagement.organization.getOrganizations2(serviceDeskId: 1);
  serviceManagement.request.createCustomerRequest(body: RequestCreateDTO());

  client.close();
}
