// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Spec _$SpecFromJson(Map<String, dynamic> json) => Spec(
      Info.fromJson(json['info'] as Map<String, dynamic>),
      (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      Components.fromJson(json['components'] as Map<String, dynamic>),
      (json['paths'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Map<String, dynamic>),
      ),
    );

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      title: json['title'] as String,
      description: json['description'] as String?,
      version: json['version'] as String?,
    );

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Components _$ComponentsFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    allowedKeys: const [
      'schemas',
      'securitySchemes',
      'requestBodies',
      'parameters',
      'responses'
    ],
  );
  return Components(
    (json['schemas'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Schema.fromJson(e as Map<String, dynamic>)),
    ),
    (json['securitySchemes'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e as Object),
    ),
    requestBodies: (json['requestBodies'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Request.fromJson(e as Map<String, dynamic>)),
    ),
    parameters: (json['parameters'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Parameter.fromJson(e as Map<String, dynamic>)),
    ),
    responses: (json['responses'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Response.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Path _$PathFromJson(Map<String, dynamic> json) => Path(
      description: json['description'] as String,
      operationId: json['operationId'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      summary: json['summary'] as String?,
      deprecated: json['deprecated'] as bool?,
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map((e) => Parameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      requestBody: json['requestBody'] == null
          ? null
          : Request.fromJson(json['requestBody'] as Map<String, dynamic>),
      responses: (json['responses'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Response.fromJson(e as Map<String, dynamic>)),
      ),
    );

Request _$RequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    allowedKeys: const [
      'content',
      'required',
      'description',
      r'$ref',
      'x-examples'
    ],
  );
  return Request(
    (json['content'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Content.fromJson(e as Map<String, dynamic>)),
    ),
    required: json['required'] as bool?,
    description: json['description'] as String?,
    ref: json[r'$ref'] as String?,
  )..examples = json['x-examples'];
}

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      description: json['description'] as String?,
      content: (json['content'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Content.fromJson(e as Map<String, dynamic>)),
      ),
    );

Content _$ContentFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    allowedKeys: const ['description', 'example', 'examples', 'schema'],
  );
  return Content(
    description: json['description'] as String?,
    schema: json['schema'] == null
        ? null
        : Schema.fromJson(json['schema'] as Map<String, dynamic>),
    example: json['example'],
    examples: json['examples'],
  );
}

Parameter _$ParameterFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    allowedKeys: const [
      'in',
      'name',
      'description',
      'required',
      'type',
      'schema',
      'items',
      'style',
      'explode',
      'deprecated',
      'x-showInExample',
      'example',
      'x-changes',
      r'$ref'
    ],
  );
  return Parameter(
    $enumDecodeNullable(_$ParameterLocationEnumMap, json['in']) ??
        ParameterLocation.query,
    json['name'] as String?,
    json['description'] as String?,
    json['required'] as bool?,
    json['type'] as String?,
    json['schema'] == null
        ? null
        : Schema.fromJson(json['schema'] as Map<String, dynamic>),
    json['items'] == null
        ? null
        : Schema.fromJson(json['items'] as Map<String, dynamic>),
    json['style'] as String?,
    json['explode'] as bool?,
    json[r'$ref'] as String?,
    json['deprecated'] as bool? ?? false,
  )
    ..showInExample = json['x-showInExample']
    ..example = json['example']
    ..changes = json['x-changes'];
}

const _$ParameterLocationEnumMap = {
  ParameterLocation.query: 'query',
  ParameterLocation.path: 'path',
  ParameterLocation.formData: 'formData',
  ParameterLocation.header: 'header',
};

Schema _$SchemaFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    allowedKeys: const [
      'type',
      'format',
      'properties',
      'additionalProperties',
      'description',
      'required',
      'allOf',
      'anyOf',
      'oneOf',
      'example',
      'discriminator',
      'title',
      'deprecated',
      'uniqueItems',
      'readOnly',
      'writeOnly',
      'nullable',
      'xml',
      'maxLength',
      'minLength',
      'maxItems',
      'minItems',
      'maxProperties',
      'minProperties',
      'maximum',
      'minimum',
      'pattern',
      'default',
      'enum',
      r'$ref',
      'items'
    ],
  );
  return Schema(
    json['type'] as String?,
    json['format'] as String?,
    (json['properties'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Schema.fromJson(e as Map<String, dynamic>)),
    ),
    json['additionalProperties'],
    json['enum'] as List<dynamic>?,
    json[r'$ref'] as String?,
    json['items'] == null
        ? null
        : Schema.fromJson(json['items'] as Map<String, dynamic>),
    json['description'] as String?,
    (json['required'] as List<dynamic>?)?.map((e) => e as String).toList(),
    (json['allOf'] as List<dynamic>?)
        ?.map((e) => Schema.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['anyOf'] as List<dynamic>?)
        ?.map((e) => Schema.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['oneOf'] as List<dynamic>?)
        ?.map((e) => Schema.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['deprecated'] as bool? ?? false,
    json['uniqueItems'] as bool? ?? false,
    json['readOnly'] as bool? ?? false,
    json['writeOnly'] as bool? ?? false,
    json['nullable'] as bool? ?? false,
    json['xml'] as Map<String, dynamic>?,
    json['maxLength'] as int?,
    json['minLength'] as int?,
    json['maxItems'] as int?,
    json['minItems'] as int?,
    json['minProperties'] as int?,
    json['maxProperties'] as int?,
    json['maximum'] as int?,
    json['minimum'] as int?,
    json['pattern'] as String?,
    json['default'],
    json['example'],
    json['discriminator'],
    json['title'] as String?,
  );
}
