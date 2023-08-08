// ignore_for_file: deprecated_member_use_from_same_package
//--- example

import 'dart:convert';
import 'dart:io';
import 'package:atlassian_apis/confluence.dart';
import 'package:http/http.dart';

void main() async {
  // Create Confluence API from an authenticated client
  var confluence = ConfluenceApi(apiClient);

  // Get a page
  var page =
      await confluence.content.getContentById(id: '1234', expand: ['version']);

  // Update a page
  await confluence.content.updateContent(
    id: page.id!,
    body: ContentUpdate(
      version: ContentUpdateVersion(number: page.version!.number + 1),
      title: page.title!,
      type: 'page',
      body: ContentUpdateBody(
        storage: ContentBodyCreateStorage(
          value: 'new content',
          representation: ContentBodyCreateStorageRepresentation.storage,
        ),
      ),
    ),
  );

  // Get page attachments
  var attachments = await confluence.contentChildrenAndDescendants
      .getContentChildrenByType(id: '1234', type: 'attachment');
  var existingAttachments = attachments.results.toList();

  // Delete attachments
  await confluence.content.deleteContent(id: existingAttachments.first.id!);

  // Create new attachments
  var file = File('my_file.pdf');
  await confluence.contentAttachments.createOrUpdateAttachments(
      id: '1234',
      body: MultipartFile('file', file.openRead(), file.lengthSync(),
          filename: 'file.pdf'));

  // Close the http client
  confluence.close();
}
//---

ApiClient get apiClient => throw UnimplementedError();

void printJson(object) {
  print(jsonEncode(object));
}
