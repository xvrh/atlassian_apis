// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Spec _$SpecFromJson(Map<String, dynamic> json) {
  return Spec(
    info: Info.fromJson(json['info'] as Map<String, dynamic>),
    definitions: (json['definitions'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Schema.fromJson(e as Map<String, dynamic>)),
    ),
    paths: (json['paths'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          k,
          (e as Map<String, dynamic>).map(
            (k, e) => MapEntry(_$enumDecode(_$HttpMethodEnumMap, k),
                Path.fromJson(e as Map<String, dynamic>)),
          )),
    ),
  );
}

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$HttpMethodEnumMap = {
  HttpMethod.get: 'get',
  HttpMethod.post: 'post',
  HttpMethod.put: 'put',
  HttpMethod.delete: 'delete',
};

Info _$InfoFromJson(Map<String, dynamic> json) {
  return Info(
    title: json['title'] as String,
    description: json['description'] as String?,
    version: json['version'] as String?,
  );
}

Path _$PathFromJson(Map<String, dynamic> json) {
  return Path(
    description: json['description'] as String,
    operationId: json['operationId'] as String,
    summary: json['summary'] as String?,
    deprecated: json['deprecated'] as bool?,
    parameters: (json['parameters'] as List<dynamic>?)
        ?.map((e) => Parameter.fromJson(e as Map<String, dynamic>))
        .toList(),
    responses: (json['responses'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Response.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return Response(
    description: json['description'] as String?,
    content: (json['content'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Parameter.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Parameter _$ParameterFromJson(Map<String, dynamic> json) {
  return Parameter(
    location: _$enumDecode(_$ParameterLocationEnumMap, json['in']),
    name: json['name'] as String,
    description: json['description'] as String?,
    required: json['required'] as bool?,
    type: json['type'] as String?,
    schema: json['schema'] == null
        ? null
        : Schema.fromJson(json['schema'] as Map<String, dynamic>),
    items: json['items'] == null
        ? null
        : Schema.fromJson(json['items'] as Map<String, dynamic>),
  );
}

const _$ParameterLocationEnumMap = {
  ParameterLocation.query: 'query',
  ParameterLocation.path: 'path',
  ParameterLocation.body: 'body',
  ParameterLocation.formData: 'formData',
};

Schema _$SchemaFromJson(Map<String, dynamic> json) {
  return Schema(
    type: json['type'] as String?,
    format: json['format'] as String?,
    properties: (json['properties'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Schema.fromJson(e as Map<String, dynamic>)),
    ),
    additionalProperties: json['additionalProperties'] == null
        ? null
        : Schema.fromJson(json['additionalProperties'] as Map<String, dynamic>),
    enums: (json['enum'] as List<dynamic>?)?.map((e) => e as String).toList(),
    ref: json[r'$ref'] as String?,
    items: json['items'] == null
        ? null
        : Schema.fromJson(json['items'] as Map<String, dynamic>),
    description: json['description'] as String?,
    required:
        (json['required'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}
