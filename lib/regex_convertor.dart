import 'package:freezed_annotation/freezed_annotation.dart';

class RegExpStringConvertor extends JsonConverter<RegExp, String> {
  const RegExpStringConvertor();
  @override
  RegExp fromJson(String json) {
    return RegExp(
      json,
      caseSensitive: false,
      multiLine: false,
    );
  }

  @override
  String toJson(RegExp object) {
    return object.pattern;
  }
}
