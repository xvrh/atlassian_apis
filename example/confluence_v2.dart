import 'dart:convert';
import 'dart:io';
import 'package:atlassian_apis/confluence_v2.dart';

void main() async {
  // Create Confluence API from an authenticated client
  var atlassianClient = ApiClient.basicAuthentication(
      Uri.https('${Platform.environment['ATLASSIAN_DOMAIN']!}.atlassian.net',
          'wiki/api/v2'),
      user: Platform.environment['ATLASSIAN_USER']!,
      apiToken: Platform.environment['ATLASSIAN_API_TOKEN']!);
  var confluence = ConfluenceV2Api(atlassianClient);

  // Get a page
  var page = await confluence.page.getPageById(id: 123456);
  print(page.title);

  // Get page attachments
  var attachments =
      await confluence.attachment.getPageAttachments(id: 123456, limit: 2);
  for (var attachment in attachments) {
    print('Attachment: ${attachment.title} / ${attachment.downloadLink}');
  }

  // Close the http client
  confluence.close();
}

void printJson(object) {
  print(jsonEncode(object));
}
