import 'package:freezed_annotation/freezed_annotation.dart';

const freezedMergeTypeName = "type";

const freezedMerge = Freezed(
  fromJson: false,
  toJson: true,
  unionKey: "type",
  unionValueCase: FreezedUnionCase.pascal,
);

const jsonSerializableMerge = JsonSerializable(
  createFactory: true,
  createToJson: true,
  explicitToJson: true,
);
