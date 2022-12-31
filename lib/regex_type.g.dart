// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regex_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegexType _$$_RegexTypeFromJson(Map<String, dynamic> json) => _$_RegexType(
      name: json['name'] as String,
      regex: const RegExpStringConvertor().fromJson(json['regex'] as String),
      color: _$JsonConverterFromJson<String, Color>(
          json['color'], const HexColorConvertor().fromJson),
    );

Map<String, dynamic> _$$_RegexTypeToJson(_$_RegexType instance) =>
    <String, dynamic>{
      'name': instance.name,
      'regex': const RegExpStringConvertor().toJson(instance.regex),
      'color': _$JsonConverterToJson<String, Color>(
          instance.color, const HexColorConvertor().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
