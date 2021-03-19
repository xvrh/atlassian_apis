import 'package:json_annotation/json_annotation.dart';

part 'swagger_spec.g.dart';

enum HttpMethod { get, post, put, delete }

@JsonSerializable(createToJson: false)
class Spec {
  final Info info;
  final Map<String, Schema> definitions;
  final Map<String, Map<HttpMethod, Path>> paths;

  Spec({required this.info, required this.definitions, required this.paths});

  factory Spec.fromJson(Map<String, dynamic> json) => _$SpecFromJson(json);
}

@JsonSerializable(createToJson: false)
class Info {
  final String title;
  final String description;
  final String? version;

  Info({required this.title, String? description, this.version})
      : description = description ?? '';

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@JsonSerializable(createToJson: false)
class Path {
  final String summary;
  final String description;
  final String operationId;
  final bool deprecated;
  final List<Parameter> parameters;
  final Map<String, Response> responses;

  Path(
      {required this.description,
      required this.operationId,
      String? summary,
      bool? deprecated,
      List<Parameter>? parameters,
      Map<String, Response>? responses})
      : summary = summary ?? '',
        deprecated = deprecated ?? false,
        parameters = parameters ?? const [],
        responses = responses ?? const {};

  factory Path.fromJson(Map<String, dynamic> json) => _$PathFromJson(json);
}

@JsonSerializable(createToJson: false)
class Response {
  final String description;
  final Map<String, Parameter> content;

  Response({String? description, required this.content})
      : description = description ?? '';

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}

enum ParameterLocation { query, path, body, formData }

@JsonSerializable(createToJson: false)
class Parameter {
  @JsonKey(name: 'in')
  final ParameterLocation location;

  final String name;
  final String description;
  final bool required;
  final String? type;
  final Schema? schema;
  final Schema? items;

  Parameter(
      {required this.location,
      required this.name,
      String? description,
      bool? required,
      this.type,
      this.schema,
      this.items})
      : description = description ?? '',
        required = required ?? false;

  factory Parameter.fromJson(Map<String, dynamic> json) =>
      _$ParameterFromJson(json);
}

@JsonSerializable(createToJson: false)
class Schema {
  final String? type;
  final String? format;
  final Map<String, Schema> properties;
  final Schema? additionalProperties;
  final String description;
  final List<String> required;

  @JsonKey(name: 'enum')
  final List<String>? enums;

  @JsonKey(name: r'$ref')
  final String? ref;

  final Schema? items;

  Schema({
    required this.type,
    this.format,
    Map<String, Schema>? properties,
    this.additionalProperties,
    this.enums,
    this.ref,
    this.items,
    String? description,
    List<String>? required,
  })  : properties = properties ?? const {},
        required = required ?? const [],
        description = description ?? '';

  factory Schema.fromJson(Map<String, dynamic> json) => _$SchemaFromJson(json);
}
