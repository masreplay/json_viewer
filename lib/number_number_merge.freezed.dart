// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_number_merge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NumberNumberMerge {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude) location,
    required TResult Function(num first, num second) math,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude)? location,
    TResult? Function(num first, num second)? math,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? location,
    TResult Function(num first, num second)? math,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumberNumberMergeLocation value) location,
    required TResult Function(_NumberNumberMergeMath value) math,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NumberNumberMergeLocation value)? location,
    TResult? Function(_NumberNumberMergeMath value)? math,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NumberNumberMergeLocation value)? location,
    TResult Function(_NumberNumberMergeMath value)? math,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberNumberMergeCopyWith<$Res> {
  factory $NumberNumberMergeCopyWith(
          NumberNumberMerge value, $Res Function(NumberNumberMerge) then) =
      _$NumberNumberMergeCopyWithImpl<$Res, NumberNumberMerge>;
}

/// @nodoc
class _$NumberNumberMergeCopyWithImpl<$Res, $Val extends NumberNumberMerge>
    implements $NumberNumberMergeCopyWith<$Res> {
  _$NumberNumberMergeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NumberNumberMergeLocationCopyWith<$Res> {
  factory _$$_NumberNumberMergeLocationCopyWith(
          _$_NumberNumberMergeLocation value,
          $Res Function(_$_NumberNumberMergeLocation) then) =
      __$$_NumberNumberMergeLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_NumberNumberMergeLocationCopyWithImpl<$Res>
    extends _$NumberNumberMergeCopyWithImpl<$Res, _$_NumberNumberMergeLocation>
    implements _$$_NumberNumberMergeLocationCopyWith<$Res> {
  __$$_NumberNumberMergeLocationCopyWithImpl(
      _$_NumberNumberMergeLocation _value,
      $Res Function(_$_NumberNumberMergeLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_NumberNumberMergeLocation(
      null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@jsonSerializableMerge
class _$_NumberNumberMergeLocation extends _NumberNumberMergeLocation {
  const _$_NumberNumberMergeLocation(this.latitude, this.longitude,
      {final String? $type})
      : $type = $type ?? 'Location',
        super._();

  @override
  final double latitude;
  @override
  final double longitude;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NumberNumberMerge.location(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberNumberMergeLocation &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NumberNumberMergeLocationCopyWith<_$_NumberNumberMergeLocation>
      get copyWith => __$$_NumberNumberMergeLocationCopyWithImpl<
          _$_NumberNumberMergeLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude) location,
    required TResult Function(num first, num second) math,
  }) {
    return location(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude)? location,
    TResult? Function(num first, num second)? math,
  }) {
    return location?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? location,
    TResult Function(num first, num second)? math,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumberNumberMergeLocation value) location,
    required TResult Function(_NumberNumberMergeMath value) math,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NumberNumberMergeLocation value)? location,
    TResult? Function(_NumberNumberMergeMath value)? math,
  }) {
    return location?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NumberNumberMergeLocation value)? location,
    TResult Function(_NumberNumberMergeMath value)? math,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NumberNumberMergeLocationToJson(
      this,
    );
  }
}

abstract class _NumberNumberMergeLocation extends NumberNumberMerge {
  const factory _NumberNumberMergeLocation(
          final double latitude, final double longitude) =
      _$_NumberNumberMergeLocation;
  const _NumberNumberMergeLocation._() : super._();

  double get latitude;
  double get longitude;
  @JsonKey(ignore: true)
  _$$_NumberNumberMergeLocationCopyWith<_$_NumberNumberMergeLocation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NumberNumberMergeMathCopyWith<$Res> {
  factory _$$_NumberNumberMergeMathCopyWith(_$_NumberNumberMergeMath value,
          $Res Function(_$_NumberNumberMergeMath) then) =
      __$$_NumberNumberMergeMathCopyWithImpl<$Res>;
  @useResult
  $Res call({num first, num second});
}

/// @nodoc
class __$$_NumberNumberMergeMathCopyWithImpl<$Res>
    extends _$NumberNumberMergeCopyWithImpl<$Res, _$_NumberNumberMergeMath>
    implements _$$_NumberNumberMergeMathCopyWith<$Res> {
  __$$_NumberNumberMergeMathCopyWithImpl(_$_NumberNumberMergeMath _value,
      $Res Function(_$_NumberNumberMergeMath) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? second = null,
  }) {
    return _then(_$_NumberNumberMergeMath(
      null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as num,
      null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_NumberNumberMergeMath extends _NumberNumberMergeMath {
  const _$_NumberNumberMergeMath(this.first, this.second, {final String? $type})
      : $type = $type ?? 'Math',
        super._();

  @override
  final num first;
  @override
  final num second;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NumberNumberMerge.math(first: $first, second: $second)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberNumberMergeMath &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.second, second) || other.second == second));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, second);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NumberNumberMergeMathCopyWith<_$_NumberNumberMergeMath> get copyWith =>
      __$$_NumberNumberMergeMathCopyWithImpl<_$_NumberNumberMergeMath>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude) location,
    required TResult Function(num first, num second) math,
  }) {
    return math(first, second);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude)? location,
    TResult? Function(num first, num second)? math,
  }) {
    return math?.call(first, second);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? location,
    TResult Function(num first, num second)? math,
    required TResult orElse(),
  }) {
    if (math != null) {
      return math(first, second);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumberNumberMergeLocation value) location,
    required TResult Function(_NumberNumberMergeMath value) math,
  }) {
    return math(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NumberNumberMergeLocation value)? location,
    TResult? Function(_NumberNumberMergeMath value)? math,
  }) {
    return math?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NumberNumberMergeLocation value)? location,
    TResult Function(_NumberNumberMergeMath value)? math,
    required TResult orElse(),
  }) {
    if (math != null) {
      return math(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NumberNumberMergeMathToJson(
      this,
    );
  }
}

abstract class _NumberNumberMergeMath extends NumberNumberMerge {
  const factory _NumberNumberMergeMath(final num first, final num second) =
      _$_NumberNumberMergeMath;
  const _NumberNumberMergeMath._() : super._();

  num get first;
  num get second;
  @JsonKey(ignore: true)
  _$$_NumberNumberMergeMathCopyWith<_$_NumberNumberMergeMath> get copyWith =>
      throw _privateConstructorUsedError;
}
