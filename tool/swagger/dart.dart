import 'package:collection/collection.dart';
import '../utils/string.dart';
import 'comment.dart';
import 'dart_keywords.dart';
import 'swagger_spec.dart' as sw;

class Api {
  final String name;
  final sw.Spec _spec;
  final _complexTypes = <ComplexType>[];
  final _topLevelEnums = <String, EnumDartType>{};
  final TypeAliases typeAliases;
  final _taggedServices = <Service>[];
  Service? _untaggedService;

  Api(this.name, this._spec, {Map<String, String>? typeAliases})
      : typeAliases = TypeAliases(typeAliases) {
    var tags = _spec.tags;
    if (tags != null && tags.isNotEmpty) {
      for (var tag in tags) {
        var service = Service(_spec.info, tag.name, tag, this.typeAliases);
        _taggedServices.add(service);
      }
    } else {
      _untaggedService = Service(_spec.info, name, null, this.typeAliases);
    }

    for (final pathEntry in _spec.paths.entries) {
      for (final methodEntry
          in pathEntry.value.entries.where((e) => e.key != 'options')) {
        var httpMethodName = methodEntry.key;
        var url = pathEntry.key;
        if (url.startsWith('/')) {
          url = url.substring(1);
        }

        var httpMethod =
            sw.HttpMethod.all.firstWhereOrNull((m) => m.name == httpMethodName);

        if (httpMethod != null) {
          var path =
              sw.Path.fromJson(methodEntry.value! as Map<String, Object?>);
          if (path.tags.isEmpty) {
            continue;
          }
          var service = _untaggedService ??
              _taggedServices.firstWhere(
                  (s) => path.tags.any((t) => t == s.tag!.name),
                  orElse: () => throw Exception(
                      'Unknown tag ${path.tags} ${pathEntry.key}'));

          var initialMethodName = _normalizeOperationId(path);
          var methodName = initialMethodName;
          var operationIndex = 1;
          while (true) {
            if (service.operations.any((o) => o.methodName == methodName)) {
              ++operationIndex;
              methodName = '$initialMethodName$operationIndex';
            } else {
              break;
            }
          }

          service.operations.add(
              Operation(this, methodName, path, url, httpMethod: httpMethod));
        } else {
          // TODO(xha): some paths contains a "parameters" entry that contains
          // some header parameter definition to add or require (ie. Authorization).
        }
      }
    }

    // Search for top-level enum first
    for (var definition in _spec.components.schemas.entries) {
      var schema = definition.value;
      if (schema.enums != null) {
        var enumName = definition.key;
        _topLevelEnums[enumName] = EnumDartType(this, null, enumName, schema);
      }
    }

    for (var definitionEntry in _spec.components.schemas.entries) {
      var definitionName = definitionEntry.key;
      var definition = definitionEntry.value;

      if (definition.type != 'string') {
        _complexTypes.add(
            ComplexType(this, _typeNameToDartType(definitionName), definition));
      }
    }
  }

  DartType parseDartType(String raw) {
    var topEnum = _topLevelEnums[raw];
    if (topEnum != null) {
      return topEnum;
    }
    return DartType(this, _typeNameToDartType(raw));
  }

  DartType typeFromSchema(sw.Schema schema) {
    var type = schema.type;
    var ref = schema.ref;
    if (ref != null) {
      if (ref.startsWith('#/components/responses/')) {
        var response = _spec.components
            .responses[ref.replaceAll('#/components/responses/', '')]!;
        return typeFromSchema(response.content.entries.first.value.schema!);
      }

      var typeName = ref.replaceAll('#/components/schemas/', '');
      var complexType = _spec.components.schemas[typeName]!;
      if (const ['string'].contains(complexType.type)) {
        return parseDartType(complexType.type!);
      } else {
        return parseDartType(typeName);
      }
    } else if (type == 'array') {
      return ListDartType(this, typeFromSchema(schema.items!));
    } else if (type == 'object') {
      return MapDartType.withDynamic(this);
    } else {
      if (type == 'string' && schema.format == 'date-time') {
        return DateTimeType(this);
      } else {
        if (type == null) {
          var allOf = schema.allOf;
          if (allOf != null && allOf.isNotEmpty) {
            return typeFromSchema(allOf.first);
          }
          //TODO(xha): support oneOf (with discriminator) & anyOf (with sub types)

          return DartType(this, 'dynamic');
        }
        return parseDartType(type);
      }
    }
  }

  DartType typeFromParameter(sw.Parameter parameter) {
    if (parameter.schema != null) {
      return typeFromSchema(parameter.schema!);
    }

    var type = parameter.type;
    if (type == 'array') {
      return ListDartType(this, typeFromSchema(parameter.items!));
    }
    if (type == null) {
      throw Exception('Type is null for parameter $parameter');
    }

    return parseDartType(type);
  }

  String _typeNameToDartType(String type) {
    return {
          'integer': 'int',
          'number': 'num',
          'boolean': 'bool',
          'string': 'String',
          'uuid': 'String',
          'file': 'MultipartFile',
          'object': 'Map',
          'dynamic': 'dynamic',
        }[type] ??
        typeAliases[type] ??
        type.words.toUpperCamel();
  }

  ComplexType? _findComplexType(DartType type) =>
      _complexTypes.firstWhereOrNull((c) => c == type);

  String toCode() {
    final buffer = StringBuffer();

    var className = '${name.words.toUpperCamel()}Api';

    buffer.writeln('''
// Generated code - Do not edit manually

import '../api_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package
''');

    var sortedTaggedServices = _taggedServices
        .where((t) => t.operations.isNotEmpty)
        .stableSortedBy((e) => e.tag!.name);

    if (_untaggedService == null) {
      buffer.writeln('''
class $className {
  final ApiClient _client;
  
  $className(this._client);
''');

      for (var service in sortedTaggedServices) {
        var tag = service.tag!;
        var description = tag.description;
        if (description.isNotEmpty) {
          buffer.writeln(documentationComment(description, indent: 2));
        }
        buffer.writeln(
            'late final ${tag.name.words.toLowerCamel()} = ${service.className}(_client);');
        buffer.writeln();
      }

      buffer.writeln('''
  void close() => _client.close();
}
''');
    }

    for (var service in sortedTaggedServices) {
      buffer.writeln(service.toCode());
      buffer.writeln();
    }
    if (_untaggedService != null) {
      buffer.writeln(_untaggedService!.toCode());
      buffer.writeln();
    }

    var generatedClasses = <String>[];
    for (var topLevelEnum
        in _topLevelEnums.values.stableSortedBy((e) => e.name)) {
      buffer.writeln(topLevelEnum.toCode());
      buffer.writeln();
    }
    for (var complexType in _complexTypes.stableSortedBy((e) => e.className)) {
      if (!generatedClasses.contains(complexType.className)) {
        generatedClasses.add(complexType.className);
        buffer.writeln(complexType.toCode());
      }
      buffer.writeln();
    }

    return buffer.toString();
  }
}

class TypeAliases {
  final _aliases = <String, String>{};
  final _untouched = <String>[];

  TypeAliases(Map<String, String>? aliases) {
    if (aliases != null) {
      _aliases.addAll(aliases);
      _untouched.addAll(_aliases.keys);
    }
  }

  String? operator [](String type) {
    var alias = _aliases[type];
    if (alias != null) {
      _untouched.remove(type);
    }
    return alias;
  }

  void throwUntouched() {
    if (_untouched.isNotEmpty) {
      throw Exception('This type aliases were not found: $_untouched');
    }
  }
}

class Service {
  final sw.Info info;
  final sw.Tag? tag;
  final List<Operation> operations = [];
  late final String _className;

  Service(this.info, String serviceName, this.tag, TypeAliases aliases) {
    var name = '${serviceName.words.toUpperCamel()}Api';
    _className = aliases[name] ?? name;
  }

  String get className => _className;

  String toCode() {
    final buffer = StringBuffer();

    if (info.description.isNotEmpty) {
      buffer.writeln('/// ${info.description}');
    }
    buffer.writeln('''

class $_className {
    final ApiClient _client;
  
  $_className(this._client);
''');

    for (var operation in operations) {
      buffer.writeln(operation.toCode());
      buffer.writeln();
    }

    buffer.writeln('}');

    return buffer.toString();
  }
}

class Operation {
  final Api _api;
  final String methodName;
  final sw.Path path;
  final String url;
  final sw.HttpMethod httpMethod;

  Operation(this._api, this.methodName, this.path, this.url,
      {required this.httpMethod})
      : assert(!url.startsWith('/'));

  RequestBody? _findBody() {
    var body = path.requestBody;
    if (body != null) {
      var contents = body.content;
      if (contents != null) {
        return RequestBody(_api, body, contents);
      }
    }
    return null;
  }

  String toCode() {
    final buffer = StringBuffer();

    var body = _findBody();

    var allParameters = <sw.Parameter>[];
    for (var parameter in path.parameters) {
      if (parameter.name.isEmpty) {
        assert(parameter.ref != null);
        var refParam = _api._spec.components.parameters[
            parameter.ref!.replaceAll('#/components/parameters/', '')]!;
        allParameters.add(refParam);
      } else {
        allParameters.add(parameter);
      }
    }

    var parameters = '';
    var namedParameterMode = true;
    if (allParameters.length == 1 &&
        (allParameters[0].required ||
            allParameters[0].location == sw.ParameterLocation.path) &&
        body == null) {
      namedParameterMode = false;
    }
    var encodedParameters = <String>[];
    for (final parameter in allParameters) {
      var parameterType = _api.typeFromParameter(parameter);

      encodedParameters.add(
          "${parameter.required && namedParameterMode ? 'required' : ''} ${parameterType.toString()}${parameter.required ? '' : '?'} ${dartIdentifier(parameter.name)}");
    }
    if (body != null) {
      encodedParameters.add(
          'required ${body.typeName} ${body.isFileUpload ? 'file' : 'body'}');
    }
    if (encodedParameters.isNotEmpty) {
      var joinedParameters = encodedParameters.join(', ');
      if (namedParameterMode) {
        parameters = '{$joinedParameters}';
      } else {
        parameters = joinedParameters;
      }
    }

    //TODO(xha): get the error case to document exceptions
    var responses = path.responses.entries
        .where((s) => s.key.startsWith('2') || s.key.startsWith('3'))
        .toList();
    if (responses.isEmpty) {
      throw Exception(
          'No status code 2xx found for $methodName / ${_api.name}');
    } else if (responses.length > 1) {
      //TODO(xha): support a way to give the user the status code to know if the
      // the resource was created or updated (200 or 201)
      //throw Exception(
      //    'Several ${responses.map((p) => p.key)} ${path.operationId} ${_api.name}');
    }
    var response = responses.first.value;

    var returnTypeName = 'void';
    DartType? returnDartType;
    if (response.content.isNotEmpty) {
      var firstResponseContent = response.content.entries.first.value;
      var responseSchema = firstResponseContent.schema;
      if (responseSchema != null &&
          (responseSchema.type != null || responseSchema.ref != null)) {
        returnDartType = _api.typeFromSchema(responseSchema);
        returnTypeName = returnDartType.toString();
      } else if (firstResponseContent.example != null) {
        returnTypeName = 'dynamic';
      }
    }

    buffer.writeln(documentationComment(path.description, indent: 2));
    buffer.writeln('Future<$returnTypeName> $methodName($parameters) async {');

    var parametersCode = '';

    var pathParameters =
        allParameters.where((p) => p.location == sw.ParameterLocation.path);
    if (pathParameters.isNotEmpty) {
      parametersCode += ', pathParameters: {';
      for (var parameter in pathParameters) {
        var parameterType = _api.typeFromParameter(parameter);
        parametersCode +=
            "'${parameter.name}': ${parameterType.identifierToString(dartIdentifier(parameter.name))}, ";
      }
      parametersCode += '}';
    }

    parametersCode += _codeForParameters(
      'queryParameters',
      allParameters
          .where((p) => p.location == sw.ParameterLocation.query)
          .toList(),
    );
    parametersCode += _codeForHeaders(allParameters);

    if (httpMethod != sw.HttpMethod.get) {
      if (body != null) {
        var bodyJson = body.jsonDartType;
        if (bodyJson != null) {
          var jsonEncodeCode = bodyJson.toJsonCode(PropertyName('body'), {});
          parametersCode += ', body: $jsonEncodeCode';
        } else {
          assert(body.isFileUpload);
          parametersCode += ', file: file';
        }
      }
    }

    var sendCode =
        "await _client.send('${httpMethod.name}', '$url'$parametersCode,)";
    if (returnDartType != null) {
      var decodeCode = _fromJsonCodeForComplexType(
          _api, returnDartType, sendCode,
          accessorIsNullable: false, targetIsNullable: false);
      buffer.write('return $decodeCode;');
    } else if (returnTypeName != 'void') {
      buffer.writeln('return $sendCode;');
    } else {
      buffer.writeln('$sendCode;');
    }

    buffer.writeln('}');

    return buffer.toString();
  }

  String _codeForParameters(String name, List<sw.Parameter> parameters) {
    var queryParametersCode = '';
    if (parameters.isNotEmpty) {
      queryParametersCode = ', $name: {';
      for (var parameter in parameters) {
        var parameterType = _api.typeFromParameter(parameter);
        if (!parameter.required) {
          queryParametersCode +=
              'if (${dartIdentifier(parameter.name)} != null)\n';
        }
        queryParametersCode +=
            "'${parameter.name}': ${parameterType.identifierToString(dartIdentifier(parameter.name))}, \n";
      }
      queryParametersCode += '}';
    }
    return queryParametersCode;
  }

  String _codeForHeaders(Iterable<sw.Parameter> parameters) {
    parameters = parameters
        .where((p) =>
            p.location == sw.ParameterLocation.header &&
            p.name != 'Authorization')
        .toList();

    var queryParametersCode = '';
    if (parameters.isNotEmpty) {
      queryParametersCode = ', headers: {';
      for (var parameter in parameters) {
        var defaultValue = parameter.schema?.defaultValue;

        queryParametersCode += "'${parameter.name}': '$defaultValue', \n";
      }
      queryParametersCode += '}';
    }
    return queryParametersCode;
  }
}

class RequestBody {
  final Api _api;
  final sw.Request request;
  bool _isFileUpload = false;
  late sw.Content _content;
  DartType? _jsonDartType;

  RequestBody(this._api, this.request, Map<String, sw.Content> contents) {
    var content = contents.entries.first;
    _content = content.value;
    if (content.key == 'multipart/form-data' &&
        content.value.schema?.format == 'binary') {
      _isFileUpload = true;
    } else {
      _jsonDartType = _api.typeFromSchema(_content.schema!);
    }
  }

  bool get isRequired => request.required;

  bool get isFileUpload => _isFileUpload;

  DartType? get jsonDartType => _jsonDartType;

  String get typeName {
    var jsonType = _jsonDartType;
    if (jsonType != null) {
      return jsonType.toString();
    } else {
      assert(_isFileUpload);
      return 'MultipartFile';
    }
  }
}

class ComplexType extends DartType {
  final sw.Schema definition;
  late final List<Property> _properties;

  ComplexType(Api api, String name, this.definition)
      : super(api, _toClassName(name)) {
    _properties = definition.properties.entries.map((e) {
      DartType dartType;

      var valueItems = e.value.items;
      if (valueItems != null && valueItems.enums != null) {
        var enumType = EnumDartType(api, this, e.key, valueItems);
        dartType = ListDartType(api, enumType);
      } else if (valueItems != null &&
          valueItems.type == 'object' &&
          valueItems.properties.isNotEmpty) {
        var complexType =
            InlineComplexType(api, this, e.key, valueItems, isList: true);
        api._complexTypes.add(complexType);
        dartType = ListDartType(api, complexType);
      } else if (e.value.type == 'object' && e.value.properties.isNotEmpty) {
        var complexType = InlineComplexType(api, this, e.key, e.value);
        api._complexTypes.add(complexType);
        dartType = complexType;
      } else if (e.value.enums != null) {
        dartType = EnumDartType(api, this, e.key, e.value);
      } else {
        dartType = api.typeFromSchema(e.value);
      }

      return Property(this, PropertyName(e.key), dartType, e.value);
    }).toList();
  }

  String get _description => definition.description;

  String get className => name;

  static String _toClassName(String name) {
    return name.replaceAll(RegExp(r'[^a-z0-9_\$]', caseSensitive: false), '');
  }

  bool _isPropertyRequired(Property property) {
    return _definitionRequireProperty(property) ||
        property.type is ListDartType ||
        property.type.isBool;
  }

  bool _definitionRequireProperty(Property property) {
    return definition.required.contains(property.name.original);
  }

  String toCode() {
    final buffer = StringBuffer();

    if (_description.isNotEmpty) {
      buffer.writeln(documentationComment(_description, indent: 0));
      if (_isObsolete(_description)) {
        buffer.writeln('@deprecated');
      }
    }
    buffer.writeln('class $className {');
    for (final property in _properties) {
      var typeName = property.type.toDeclarationString({});

      if (property.schema.description.isNotEmpty) {
        buffer.writeln(
            documentationComment(property.schema.description, indent: 2));
        if (_isObsolete(property.schema.description)) {
          buffer.writeln('@deprecated');
        }
      }
      buffer.writeln(
          'final $typeName${_isPropertyRequired(property) ? '' : '?'} ${property.name.camelCased};');
    }

    buffer.writeln();
    if (_properties.isNotEmpty) {
      buffer.writeln('$className({');
      buffer.writeln(_properties.map((p) {
        var required = _isPropertyRequired(p);
        var forceRequired = _definitionRequireProperty(p);
        if (!required || forceRequired) {
          var prefix = forceRequired ? 'required' : '';
          return '$prefix this.${p.name.camelCased}';
        } else {
          return '${p.type.toDeclarationString({})}? ${p.name.camelCased}';
        }
      }).join(', '));
      buffer.writeln('})');

      var propertiesWithDefault = _properties
          .where(
              (p) => _isPropertyRequired(p) && !_definitionRequireProperty(p))
          .toList();
      if (propertiesWithDefault.isNotEmpty) {
        buffer.write(':');

        buffer.writeln(propertiesWithDefault.map((p) {
          return '${p.name.camelCased} = ${p.name.camelCased} ?? ${p.type.defaultValue}';
        }).join(', '));
      }

      buffer.writeln(';');
    } else {
      buffer.writeln('$className();');
    }

    buffer.writeln();

    buffer.writeln('factory $className.fromJson(Map<String, Object?> json) {');
    buffer.writeln('return $className(');
    for (final property in _properties) {
      var fromJsonCode = property.type.fromJsonCode(
          "json[r'${property.name.original}']", {},
          accessorIsNullable: true,
          targetIsNullable: !_isPropertyRequired(property));
      buffer.writeln('${property.name.camelCased}: $fromJsonCode,');
    }
    buffer.writeln(');');

    buffer.writeln('}');
    buffer.writeln();

    buffer.writeln('Map<String, Object?> toJson() {');
    for (final property in _properties) {
      buffer.writeln(
          'var ${property.name.camelCased} = this.${property.name.camelCased};');
    }

    buffer.writeln('');
    buffer.writeln('final json = <String, Object?>{};');
    for (final property in _properties) {
      var toJsonCode = property.type.toJsonCode(property.name, {});

      var isRequired = _isPropertyRequired(property);

      if (!isRequired) {
        buffer.writeln('if (${property.name.camelCased} != null) {');
      }
      buffer.writeln("json[r'${property.name.original}'] = $toJsonCode;");
      if (!isRequired) {
        buffer.writeln('}');
      }
    }
    buffer.writeln('return json;');
    buffer.writeln('}');

    if (_properties.isNotEmpty) {
      buffer.writeln('$className copyWith({');
      buffer.writeln(_properties
          .map(
              (p) => ' ${p.type.toDeclarationString({})}? ${p.name.camelCased}')
          .join(', '));
      buffer.writeln('}) {');
      buffer.writeln('return $className(');
      for (var p in _properties) {
        buffer.writeln(
            ' ${p.name.camelCased}: ${p.name.camelCased} ?? this.${p.name.camelCased},');
      }
      buffer.writeln(');}');
    }

    buffer.writeln('}');

    for (var enumProperty in _properties) {
      var dartType = enumProperty.type;
      if (dartType is EnumDartType) {
        if (!dartType.isTopLevel) {
          buffer.writeln(dartType.toCode());
        }
      } else if (dartType is ListDartType) {
        var itemType = dartType.itemType;
        if (itemType is EnumDartType) {
          if (!itemType.isTopLevel) {
            buffer.writeln(itemType.toCode());
          }
        }
      }
    }

    return buffer.toString();
  }
}

String _fromJsonCodeForComplexType(Api api, DartType type, String accessor,
    {required bool accessorIsNullable, required bool targetIsNullable}) {
  var complexType = api._findComplexType(type);
  if (complexType == null) {
    return type.fromJsonCode(accessor, {},
        accessorIsNullable: accessorIsNullable,
        targetIsNullable: targetIsNullable);
  }

  return '$type.fromJson($accessor)';
}

class InlineComplexType extends ComplexType {
  InlineComplexType(
      Api api, DartType parent, String propertyName, sw.Schema schema,
      {bool isList = false})
      : super(api, _computeName(api, parent, propertyName, isList: isList),
            schema) {
    assert(schema.type == 'object');
  }

  static String _computeName(Api api, DartType parent, String propertyName,
      {bool isList = false}) {
    var name =
        '${parent.name}${propertyName.words.toUpperCamel()}${isList ? 'Item' : ''}';
    return api.typeAliases[name] ?? name;
  }
}

class DartType {
  final Api api;
  final List<DartType> genericParameters = [];
  final String name;

  DartType(this.api, this.name) : assert(!name.contains('.'));

  SimpleType? get simpleType => SimpleType.all[name];

  bool get isBool => simpleType == SimpleType.boolean;

  String get defaultValue => simpleType?.defaultValue ?? 'null';

  String identifierToString(String identifier) {
    var simpleType = this.simpleType;
    if (simpleType != null) {
      return simpleType.identifierToString(identifier);
    }
    return "'\$$identifier'";
  }

  String toJsonCode(
      PropertyName propertyName, Map<DartType, String> genericTypes) {
    if (genericTypes.containsKey(this)) {
      return propertyName.camelCased;
    } else if (simpleType != null) {
      return propertyName.camelCased;
    } else {
      return '${propertyName.camelCased}.toJson()';
    }
  }

  String fromJsonCode(String accessor, Map<DartType, String> genericTypes,
      {required bool accessorIsNullable, required bool targetIsNullable}) {
    var simpleType = this.simpleType;
    if (targetIsNullable && accessorIsNullable) {
      if (simpleType != null) {
        return simpleType.castNullable(accessor);
      } else {
        return '$accessor != null ? $name.fromJson($accessor! as Map<String, Object?>) : null';
      }
    } else if (!targetIsNullable && accessorIsNullable) {
      if (simpleType != null) {
        var code = simpleType.castNullable(accessor);
        var defaultValue = simpleType.defaultValue;
        if (defaultValue.isNotEmpty) {
          return '$code ?? ${simpleType.defaultValue}';
        } else {
          return code;
        }
      } else {
        return '$name.fromJson($accessor as Map<String, Object?>? ?? const {})';
      }
    } else {
      if (simpleType != null) {
        return simpleType.castNonNullable(accessor);
      } else {
        return '$name.fromJson($accessor as Map<String, Object?>)';
      }
    }
  }

  @override
  bool operator ==(other) =>
      other is DartType &&
      other.name == name &&
      const ListEquality().equals(other.genericParameters, genericParameters);

  @override
  int get hashCode =>
      name.hashCode ^ const ListEquality().hash(genericParameters);

  @override
  String toString() =>
      '$name${genericParameters.isNotEmpty ? '<${genericParameters.join(', ')}>' : ''}';

  String toDeclarationString(Map<DartType, String> replacement) {
    return replacement[this] ??
        '$name${genericParameters.isNotEmpty ? '<${genericParameters.map((e) => e.toDeclarationString(replacement)).join(', ')}>' : ''}';
  }
}

class SimpleType {
  final String name;
  final String defaultValue;
  final String Function(String) castNullable;
  final String Function(String) castNonNullable;
  final String Function(String) identifierToString;

  static final integer = SimpleType(
    'int',
    defaultValue: '0',
    castNullable: (a) => '($a as num?)?.toInt()',
    castNonNullable: (a) => '($a! as num).toInt()',
  );
  static final number = SimpleType('num', defaultValue: '0');
  static final boolean = SimpleType(
    'bool',
    defaultValue: 'false',
    castNonNullable: (a) => '$a == true',
  );
  static final string = SimpleType(
    'String',
    defaultValue: "''",
    identifierToString: (id) => id,
  );
  static final object = SimpleType(
    'Object',
    defaultValue: '{}',
    castNonNullable: (a) => a,
    castNullable: (a) => a,
  );
  static final dynamicType = SimpleType(
    'dynamic',
    defaultValue: '',
    castNonNullable: (a) => a,
    castNullable: (a) => a,
  );

  static final all = <String, SimpleType>{
    for (var e in [integer, number, boolean, string, object, dynamicType])
      e.name: e
  };

  SimpleType(
    this.name, {
    required this.defaultValue,
    String Function(String)? castNullable,
    String Function(String)? castNonNullable,
    String Function(String)? identifierToString,
  })  : castNullable = castNullable ?? _defaultNullableCasting(name),
        castNonNullable = castNonNullable ?? _defaultNonNullableCasting(name),
        identifierToString = identifierToString ?? _defaultIdentifierToString;

  static String Function(String) _defaultNullableCasting(String type) {
    return (accessor) => '$accessor as $type?';
  }

  static String Function(String) _defaultNonNullableCasting(String type) {
    return (accessor) => '$accessor as $type';
  }

  static String _defaultIdentifierToString(String id) => "'\$$id'";
}

class ListDartType extends DartType {
  final DartType itemType;

  ListDartType(Api api, this.itemType) : super(api, 'List') {
    genericParameters.add(itemType);
  }

  @override
  String get defaultValue => simpleType?.defaultValue ?? '[]';

  @override
  String toJsonCode(
      PropertyName propertyName, Map<DartType, String> genericTypes) {
    var itemJsonCode = itemType.toJsonCode(PropertyName('i'), genericTypes);
    if (itemJsonCode != 'i') {
      return '${propertyName.camelCased}.map((i) => $itemJsonCode).toList()';
    } else {
      return propertyName.camelCased;
    }
  }

  @override
  String fromJsonCode(String accessor, Map<DartType, String> genericTypes,
      {required bool accessorIsNullable, required bool targetIsNullable}) {
    var qMark = accessorIsNullable ? '?' : '';
    var code =
        "($accessor as List<Object?>$qMark)$qMark.map((i) => ${itemType.fromJsonCode('i', genericTypes, accessorIsNullable: true, targetIsNullable: false)}).toList()";
    if (accessorIsNullable && !targetIsNullable) {
      return '$code ?? []';
    }
    return code;
  }
}

class MapDartType extends DartType {
  late final DartType _itemType;

  MapDartType(Api api, sw.Schema? additionalProperties) : super(api, 'Map') {
    genericParameters.add(DartType(api, 'String'));
    if (additionalProperties != null) {
      _itemType = api.typeFromSchema(additionalProperties);
    } else {
      _itemType = DartType(api, 'Object');
    }
    genericParameters.add(_itemType);
  }

  MapDartType.withTypes(Api api, DartType key, DartType value)
      : super(api, 'Map') {
    genericParameters.add(key);
    genericParameters.add(value);
    _itemType = value;
  }

  factory MapDartType.withDynamic(Api api) => MapDartType.withTypes(
      api, DartType(api, 'String'), DartType(api, 'dynamic'));

  @override
  String get defaultValue => simpleType?.defaultValue ?? '{}';

  @override
  String toJsonCode(
      PropertyName propertyName, Map<DartType, String> genericTypes) {
    var itemJsonCode = _itemType.toJsonCode(PropertyName('v'), genericTypes);
    if (itemJsonCode != 'v') {
      return '${propertyName.camelCased}.map((k, v) => MapEntry(k, $itemJsonCode))';
    } else {
      return propertyName.camelCased;
    }
  }

  @override
  String fromJsonCode(String accessor, Map<DartType, String> genericTypes,
      {required bool accessorIsNullable, required bool targetIsNullable}) {
    var qMark = accessorIsNullable ? '?' : '';

    var itemCode = _itemType.fromJsonCode('v', genericTypes,
        accessorIsNullable: true, targetIsNullable: false);
    var castedAccessor = '$accessor as Map<String, Object?>$qMark';
    String code;
    if (itemCode != 'v') {
      code = '($castedAccessor)$qMark.map((k, v) => MapEntry(k, $itemCode))';
    } else {
      code = castedAccessor;
    }
    if (accessorIsNullable && !targetIsNullable) {
      return '$code ?? {}';
    }
    return code;
  }
}

class EnumDartType extends DartType {
  final DartType? parent;
  final sw.Schema schema;

  EnumDartType(Api api, this.parent, String propertyName, this.schema)
      : super(api, _computeName(api, parent, propertyName)) {
    assert(schema.enums != null);
  }

  static String _computeName(Api api, DartType? parent, String propertyName) {
    var name =
        '${parent != null ? parent.name : ''}${propertyName.words.toUpperCamel()}';
    return api.typeAliases[name] ?? name;
  }

  bool get isTopLevel => parent == null;

  @override
  String toJsonCode(
      PropertyName propertyName, Map<DartType, String> genericTypes) {
    return '${propertyName.camelCased}.value';
  }

  @override
  String fromJsonCode(String accessor, Map<DartType, String> genericTypes,
      {required bool accessorIsNullable, required bool targetIsNullable}) {
    if (targetIsNullable && accessorIsNullable) {
      return '$accessor != null ? $name.fromValue($accessor! as String) : null';
    } else if (!targetIsNullable && accessorIsNullable) {
      return "$name.fromValue($accessor as String? ?? '')";
    } else {
      return '$name.fromValue($accessor! as String)';
    }
  }

  String toCode() {
    var enums = schema.enums!;
    var buffer = StringBuffer();

    buffer.writeln('class $name {');
    for (var enumValue in enums) {
      buffer.writeln(
          "static const ${dartIdentifier(enumValue)} = $name._('$enumValue');");
    }
    buffer.writeln('');
    buffer.writeln('static const values = [');
    for (var enumValue in enums) {
      buffer.writeln('${dartIdentifier(enumValue)},');
    }
    buffer.writeln('];');
    buffer.writeln('''
  final String value;

  const $name._(this.value);

  static $name fromValue(String value) => values.firstWhere((e) => e.value == value, orElse: () => $name._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
''');
    buffer.writeln('}');

    return '$buffer';
  }
}

class DateTimeType extends DartType {
  DateTimeType(Api api) : super(api, 'DateTime');

  @override
  String toJsonCode(
      PropertyName propertyName, Map<DartType, String> genericTypes) {
    return '${propertyName.camelCased}.toIso8601String()';
  }

  @override
  String fromJsonCode(String accessor, Map<DartType, String> genericTypes,
      {required bool accessorIsNullable, required bool targetIsNullable}) {
    var code =
        'DateTime.tryParse($accessor ${accessorIsNullable ? "as String? ?? ''" : 'as String'})';
    if (!targetIsNullable) {
      // Prefer a bad date than fail the decoding if a date is absent
      code = '$code ?? DateTime(0)';
    }
    return code;
  }
}

class Property {
  final ComplexType parent;
  final PropertyName name;
  final DartType type;
  final sw.Schema schema;

  Property(this.parent, this.name, this.type, this.schema);
}

class PropertyName {
  final String original;
  late final String _camelCased;

  PropertyName(this.original) {
    _camelCased = dartIdentifier(dartIdentifier(original));
  }

  String get camelCased => _camelCased;

  @override
  String toString() => original;
}

String _normalizeOperationId(sw.Path path) {
  var id = path.operationId;
  String? name;
  if (id != null) {
    name = id.split('.').last.split('_').first;
  }
  name ??= path.summary;
  return name.words.toLowerCamel();
}

bool _isObsolete(String? comment) =>
    comment != null && comment.toLowerCase().contains('obsolete');

extension<T> on Iterable<T> {
  List<T> stableSortedBy<K extends Comparable<K>>(K Function(T element) keyOf) {
    var elements = [...this];
    mergeSort(elements,
        compare: (a, b) => keyOf(a as T).compareTo(keyOf(b as T)));
    return elements;
  }
}
