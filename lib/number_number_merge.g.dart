// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_number_merge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NumberNumberMergeLocation _$$_NumberNumberMergeLocationFromJson(
        Map<String, dynamic> json) =>
    _$_NumberNumberMergeLocation(
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_NumberNumberMergeLocationToJson(
        _$_NumberNumberMergeLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'type': instance.$type,
    };

Map<String, dynamic> _$$_NumberNumberMergeMathToJson(
        _$_NumberNumberMergeMath instance) =>
    <String, dynamic>{
      'first': instance.first,
      'second': instance.second,
      'type': instance.$type,
    };
