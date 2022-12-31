import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_viewer/color_convertor.dart';
import 'package:json_viewer/regex_convertor.dart';

part "regex_type.freezed.dart";
part "regex_type.g.dart";

@Freezed(toJson: true, fromJson: true)
class RegexType with _$RegexType {
  const RegexType._();
  @JsonSerializable(
    createFactory: true,
    createToJson: true,
    explicitToJson: true,
    converters: [HexColorConvertor(), RegExpStringConvertor()],
  )
  const factory RegexType({
    required String name,
    required RegExp regex,
    Color? color,
  }) = _RegexType;

  factory RegexType.fromJson(Map<String, dynamic> json) =>
      _$RegexTypeFromJson(json);

  static List<RegexType> fromList(List<Map<String, dynamic>> list) {
    return list.map((e) => RegexType.fromJson(e)).toList();
  }
}
