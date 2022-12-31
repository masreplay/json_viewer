// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regex_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegexType _$RegexTypeFromJson(Map<String, dynamic> json) {
  return _RegexType.fromJson(json);
}

/// @nodoc
mixin _$RegexType {
  String get name => throw _privateConstructorUsedError;
  RegExp get regex => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegexTypeCopyWith<RegexType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegexTypeCopyWith<$Res> {
  factory $RegexTypeCopyWith(RegexType value, $Res Function(RegexType) then) =
      _$RegexTypeCopyWithImpl<$Res, RegexType>;
  @useResult
  $Res call({String name, RegExp regex, Color? color});
}

/// @nodoc
class _$RegexTypeCopyWithImpl<$Res, $Val extends RegexType>
    implements $RegexTypeCopyWith<$Res> {
  _$RegexTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? regex = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      regex: null == regex
          ? _value.regex
          : regex // ignore: cast_nullable_to_non_nullable
              as RegExp,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegexTypeCopyWith<$Res> implements $RegexTypeCopyWith<$Res> {
  factory _$$_RegexTypeCopyWith(
          _$_RegexType value, $Res Function(_$_RegexType) then) =
      __$$_RegexTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, RegExp regex, Color? color});
}

/// @nodoc
class __$$_RegexTypeCopyWithImpl<$Res>
    extends _$RegexTypeCopyWithImpl<$Res, _$_RegexType>
    implements _$$_RegexTypeCopyWith<$Res> {
  __$$_RegexTypeCopyWithImpl(
      _$_RegexType _value, $Res Function(_$_RegexType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? regex = null,
    Object? color = freezed,
  }) {
    return _then(_$_RegexType(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      regex: null == regex
          ? _value.regex
          : regex // ignore: cast_nullable_to_non_nullable
              as RegExp,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    createFactory: true,
    createToJson: true,
    explicitToJson: true,
    converters: [HexColorConvertor(), RegExpStringConvertor()])
class _$_RegexType extends _RegexType {
  const _$_RegexType({required this.name, required this.regex, this.color})
      : super._();

  factory _$_RegexType.fromJson(Map<String, dynamic> json) =>
      _$$_RegexTypeFromJson(json);

  @override
  final String name;
  @override
  final RegExp regex;
  @override
  final Color? color;

  @override
  String toString() {
    return 'RegexType(name: $name, regex: $regex, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegexType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.regex, regex) || other.regex == regex) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, regex, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegexTypeCopyWith<_$_RegexType> get copyWith =>
      __$$_RegexTypeCopyWithImpl<_$_RegexType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegexTypeToJson(
      this,
    );
  }
}

abstract class _RegexType extends RegexType {
  const factory _RegexType(
      {required final String name,
      required final RegExp regex,
      final Color? color}) = _$_RegexType;
  const _RegexType._() : super._();

  factory _RegexType.fromJson(Map<String, dynamic> json) =
      _$_RegexType.fromJson;

  @override
  String get name;
  @override
  RegExp get regex;
  @override
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$_RegexTypeCopyWith<_$_RegexType> get copyWith =>
      throw _privateConstructorUsedError;
}
