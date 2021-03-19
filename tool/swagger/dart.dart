import 'dart:convert';
import 'package:collection/collection.dart';
import '../utils/string.dart';
import 'dart_keywords.dart';
import 'swagger_spec.dart' as sw;

class Api {
  final sw.Spec _spec;
  final _complexTypes = <ComplexType>[];
  final _topLevelEnums = <String, EnumDartType>{};
  final TypeAliases typeAliases;
  late final Service _service;

  Api(this._spec, {Map<String, String>? typeAliases})
      : typeAliases = TypeAliases(typeAliases) {
    _service = Service(_spec.info, this.typeAliases);
    for (final pathEntry in _spec.paths.entries) {
      for (final methodEntry
          in pathEntry.value.entries.where((e) => e.key != 'options')) {
        var httpMethod = methodEntry.key;
        var path = methodEntry.value;
        var url = pathEntry.key;
        if (url.startsWith('/')) {
          url = url.substring(1);
        }

        _service.operations
            .add(Operation(this, path, url, httpMethod: httpMethod));
      }
    }

    // Search for top-level enum first
    for (var definition in _spec.definitions.entries) {
      var schema = definition.value;
      if (schema.enums != null) {
        var enumName = definition.key;
        _topLevelEnums[enumName] = EnumDartType(this, null, enumName, schema);
      }
    }
    for (var definitionEntry in _spec.definitions.entries) {
      var definitionName = definitionEntry.key;
      var definition = definitionEntry.value;

      if (definition.type == 'object') {
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
    if (schema.ref != null) {
      return parseDartType(schema.ref!.replaceAll('#/definitions/', ''));
    } else if (type == 'array') {
      return ListDartType(this, typeFromSchema(schema.items!));
    } else if (type == 'object') {
      return MapDartType(this, schema.additionalProperties);
    } else {
      if (type == 'string' && schema.format == 'date-time') {
        return DateTimeType(this);
      } else {
        if (type == null) {
          throw Exception('Type is null for schema $schema');
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
          'dynamic': 'Object',
        }[type] ??
        typeAliases[type] ??
        type.toCapitalized();
  }

  ComplexType? _findComplexType(DartType type) =>
      _complexTypes.firstWhereOrNull((c) => c == type);

  String toCode() {
    final buffer = StringBuffer();

    buffer.writeln('''
// @dart=2.12
// Generated code - Do not edit manually
// This code is generated with the script in tool/generate_api.dart
    
// ${_spec.info.title}
// ${_spec.info.description}
// Version: ${_spec.info.version ?? ''}

import 'api_utils.dart' show BaseApi, ApiPath, ApiClient, ApiRequest;

export 'api_utils.dart' show ApiClient, ApiException;

// ignore_for_file: deprecated_member_use_from_same_package

''');

    buffer.writeln(_service.toCode());
    buffer.writeln();

    var generatedClasses = <String>[];
    for (var topLevelEnum in _topLevelEnums.values) {
      buffer.writeln(topLevelEnum.toCode());
      buffer.writeln();
    }
    for (var complexType in _complexTypes) {
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
  final List<Operation> operations = [];
  late String _className;

  Service(this.info, TypeAliases aliases) {
    var name = info.title.words.toUpperCamel();
    _className = aliases[name] ?? name;
  }

  String toCode() {
    final buffer = StringBuffer();

    if (info.description.isNotEmpty) {
      buffer.writeln('/// ${info.description}');
    }
    buffer.writeln('''

class $_className extends BaseApi {
  static const name = '$_className';

  $_className(ApiClient client): super(client);
''');

    buffer.writeln(
        'static final paths = <ApiPath, Future Function($_className, ApiRequest)>{');
    for (var operation in operations) {
      buffer.writeln(operation.toCodeFromRequest());
      buffer.write(',');
    }
    buffer.writeln('};');

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
  final sw.Path path;
  final String url;
  final sw.HttpMethod httpMethod;
  final String _operationId;

  Operation(this._api, this.path, this.url, {required this.httpMethod})
      : assert(!url.startsWith('/')),
        _operationId = _operationName(url, httpMethod);

  static String _operationName(String url, sw.HttpMethod httpMethod) {
    return [httpMethod.toString(), ...url.words].toLowerCamel();
  }

  String toCode() {
    final buffer = StringBuffer();

    var parameters = '';
    var namedParameterMode = true;
    if (path.parameters.length == 1 &&
        (path.parameters[0].required ||
            path.parameters[0].location == sw.ParameterLocation.path)) {
      namedParameterMode = false;
    }
    var encodedParameters = <String>[];
    for (final parameter in path.parameters) {
      var parameterType = _api.typeFromParameter(parameter);

      encodedParameters.add(
          "${parameter.required && namedParameterMode ? 'required' : ''} ${parameterType.toString()}${parameter.required ? '' : '?'} ${_toCamelCase(parameter.name)}");
    }
    if (encodedParameters.isNotEmpty) {
      var joinedParameters = encodedParameters.join(', ');
      if (namedParameterMode) {
        parameters = '{$joinedParameters}';
      } else {
        parameters = joinedParameters;
      }
    }

    var response = path.responses['200']!;
    var returnTypeName = 'void';
    DartType? returnDartType;
    if (response.schema != null) {
      returnDartType = _api.typeFromSchema(response.schema!);
      returnTypeName = returnDartType.toString();
    }

    buffer.writeln(
        "static const ApiPath ${_operationId}Path = ApiPath.${httpMethod.toLowerCase()}(name, '$url');");
    buffer.writeln('');

    buffer.writeln('/// ${httpMethod.toUpperCase()} /$url');
    buffer
        .writeln('Future<$returnTypeName> $_operationId($parameters) async {');

    var pathParametersCode = '';
    var queryParametersCode = '';
    var pathParameters =
        path.parameters.where((p) => p.location == sw.ParameterLocation.path);
    if (pathParameters.isNotEmpty) {
      pathParametersCode = ', pathParameters: {';
      for (var parameter in pathParameters) {
        pathParametersCode +=
            "'${parameter.name}': ${_toCamelCase(parameter.name)}, ";
      }
      pathParametersCode += '}';
    }

    var queryParameters =
        path.parameters.where((p) => p.location == sw.ParameterLocation.query);
    if (queryParameters.isNotEmpty) {
      queryParametersCode = ', queryParameters: {';
      for (var parameter in queryParameters) {
        queryParametersCode +=
            "'${parameter.name}': ${_toCamelCase(parameter.name)}, ";
      }
      queryParametersCode += '}';
    }

    var bodyParameterCode = '';
    if (httpMethod.toUpperCase() != 'GET') {
      var bodyParameter = path.parameters
          .firstWhereOrNull((p) => p.location == sw.ParameterLocation.body);
      if (bodyParameter != null) {
        var bodyType = _api.typeFromParameter(bodyParameter);
        var jsonEncodeCode =
            bodyType.toJsonCode(PropertyName(bodyParameter.name), {});

        bodyParameterCode = ', body: $jsonEncodeCode';
      }
    }

    var sendCode = 'await send(ApiRequest<$returnTypeName>(${_operationId}Path'
        '$pathParametersCode$queryParametersCode$bodyParameterCode),)';

    if (returnDartType != null) {
      var decodeCode = _fromJsonCodeForComplexType(
          _api, returnDartType, '$sendCode,',
          accessorIsNullable: false, targetIsNullable: false);
      buffer.write('return $decodeCode;');
    } else {
      buffer.writeln('$sendCode;');
    }

    buffer.writeln('}');

    return buffer.toString();
  }

  String toCodeFromRequest() {
    var parameters = <String, String>{};
    var namedParameters = <String, String>{};

    var namedParameterMode = true;
    if (path.parameters.length == 1 &&
        (path.parameters[0].required ||
            path.parameters[0].location == sw.ParameterLocation.path)) {
      namedParameterMode = false;
    }
    for (final parameter in path.parameters
        .where((p) => p.location == sw.ParameterLocation.path)) {
      parameters[_toCamelCase(parameter.name)] =
          "request.pathParameters['${parameter.name}']!";
    }

    for (var parameter in path.parameters
        .where((p) => p.location == sw.ParameterLocation.query)) {
      parameters[_toCamelCase(parameter.name)] =
          "request.queryParameters['${parameter.name}']${parameter.required ? '!' : ''}";
    }

    var bodyParameter = path.parameters
        .firstWhereOrNull((p) => p.location == sw.ParameterLocation.body);
    if (bodyParameter != null) {
      var dartType = _api.typeFromSchema(bodyParameter.schema!);
      parameters[_toCamelCase(bodyParameter.name)] =
          _fromJsonCodeForComplexType(_api, dartType, 'request.body!',
              accessorIsNullable: false, targetIsNullable: false);
    }

    var positionalParameters = <String>[];

    if (namedParameterMode) {
      namedParameters.addAll(parameters);
    } else {
      positionalParameters.addAll(parameters.values);
    }

    var parametersCode = positionalParameters.join(',');
    if (parametersCode.isNotEmpty && namedParameters.isNotEmpty) {
      parametersCode += ',';
    }
    parametersCode +=
        namedParameters.entries.map((e) => '${e.key}: ${e.value}').join(', ');

    return '${_operationId}Path: (api, request) => api.$_operationId($parametersCode)';
  }
}

class ComplexType extends DartType {
  final sw.Schema definition;
  late final List<Property> _properties;

  ComplexType(Api api, String name, this.definition) : super(api, name) {
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

  String get nameDeclaration {
    return className;
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
      buffer.writeln(_toComment(_description));
      if (_isObsolete(_description)) {
        buffer.writeln('@deprecated');
      }
    }
    buffer.writeln('class $nameDeclaration {');
    for (final property in _properties) {
      var typeName = property.type.toDeclarationString({});

      if (property.schema.description.isNotEmpty) {
        buffer.writeln(_toComment(property.schema.description));
        if (_isObsolete(property.schema.description)) {
          buffer.writeln('@deprecated');
        }
      }
      buffer.writeln(
          '$typeName${_isPropertyRequired(property) ? '' : '?'} ${property.name.camelCased};');
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
          "json['${property.name.original}']", {},
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
      buffer.writeln("json['${property.name.original}'] = $toJsonCode;");
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

  DartType(this.api, this.name);

  SimpleType? get simpleType => SimpleType.all[name];

  bool get isBool => simpleType == SimpleType.boolean;

  String get defaultValue => simpleType?.defaultValue ?? 'null';

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
        return '${simpleType.castNullable(accessor)} ?? ${simpleType.defaultValue}';
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
  );
  static final object = SimpleType(
    'Object',
    defaultValue: '{}',
    castNonNullable: (a) => a,
    castNullable: (a) => a,
  );

  static final all = <String, SimpleType>{
    for (var e in [integer, number, boolean, string, object]) e.name: e
  };

  SimpleType(
    this.name, {
    required this.defaultValue,
    String Function(String)? castNullable,
    String Function(String)? castNonNullable,
  })  : castNullable = castNullable ?? _defaultNullableCasting(name),
        castNonNullable = castNonNullable ?? _defaultNonNullableCasting(name);

  static String Function(String) _defaultNullableCasting(String type) {
    return (accessor) => '$accessor as $type?';
  }

  static String Function(String) _defaultNonNullableCasting(String type) {
    return (accessor) => '$accessor! as $type';
  }
}

class ListDartType extends DartType {
  final DartType itemType;

  ListDartType(Api api, this.itemType) : super(api, 'List') {
    genericParameters.add(itemType);
  }

  @override
  String get defaultValue => simpleType?.defaultValue ?? '<${itemType.name}>[]';

  @override
  String toJsonCode(
      PropertyName propertyName, Map<DartType, String> genericTypes) {
    var itemJsonCode = itemType.toJsonCode(PropertyName('i'), genericTypes);

    return '${propertyName.camelCased}.map((i) => $itemJsonCode).toList()';
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

  @override
  String get defaultValue =>
      simpleType?.defaultValue ?? '<String, ${_itemType.name}>{}';

  @override
  String toJsonCode(
      PropertyName propertyName, Map<DartType, String> genericTypes) {
    var itemJsonCode = _itemType.toJsonCode(PropertyName('v'), genericTypes);

    return '${propertyName.camelCased}.map((k, v) => MapEntry(k, $itemJsonCode))';
  }

  @override
  String fromJsonCode(String accessor, Map<DartType, String> genericTypes,
      {required bool accessorIsNullable, required bool targetIsNullable}) {
    var qMark = accessorIsNullable ? '?' : '';

    var code =
        "($accessor as Map<String, Object?>$qMark)$qMark.map((k, v) => MapEntry(k, ${_itemType.fromJsonCode('v', genericTypes, accessorIsNullable: true, targetIsNullable: false)}))";
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
          "static const ${_toCamelCase(enumValue)} = $name._('$enumValue');");
    }
    buffer.writeln("static const \$unknown = $name._('');");
    buffer.writeln('');
    buffer.writeln('static const values = [');
    for (var enumValue in enums) {
      buffer.writeln('${_toCamelCase(enumValue)},');
    }
    buffer.writeln('];');
    buffer.writeln('');
    buffer.writeln('final String value;');
    buffer.writeln('');
    buffer.writeln('const $name._(this.value);');
    buffer.writeln('');
    buffer.writeln(
        'static $name fromValue(String value) => values.firstWhere((e) => e.value == value, orElse: () => \$unknown);');
    buffer.writeln('');
    buffer.writeln('@override');
    buffer.writeln('String toString() => value;');

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
    if (!original.contains('.')) {
      _camelCased = preventKeywords(_toCamelCase(original));
    } else {
      _camelCased = original;
    }
  }

  String get camelCased => _camelCased;

  @override
  String toString() => original;
}

String _toCamelCase(String input) =>
    input.words.map((e) => e.toLowerCase()).toLowerCamel();

String _toComment(String? comment, {int indent = 0}) {
  if (comment != null && comment.isNotEmpty) {
    comment = comment.replaceAll('<code>', '`').replaceAll('</code>', '`');

    const docStarter = '/// ';

    var commentLines = LineSplitter.split(comment).toList();

    return commentLines
        .map((line) => '${' ' * indent}$docStarter$line')
        .join('\n');
  } else {
    return '';
  }
}

bool _isObsolete(String? comment) =>
    comment != null && comment.toLowerCase().contains('obsolete');
