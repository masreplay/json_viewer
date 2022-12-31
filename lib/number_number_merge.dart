import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_viewer/annotation.dart';

part "number_number_merge.freezed.dart";
part "number_number_merge.g.dart";

typedef NumberMapEntry = MapEntry<String, num>;
typedef DoubleMapEntry = MapEntry<String, double>;
typedef IntMapEntry = MapEntry<String, int>;

@freezedMerge
class NumberNumberMerge with _$NumberNumberMerge {
  const NumberNumberMerge._();

  @jsonSerializableMerge
  const factory NumberNumberMerge.location(double latitude, double longitude) =
      _NumberNumberMergeLocation;

  const factory NumberNumberMerge.math(num first, num second) =
      _NumberNumberMergeMath;
}
