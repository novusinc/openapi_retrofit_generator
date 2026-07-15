// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'symbol_model_location.dart';

part 'symbol_model.freezed.dart';
part 'symbol_model.g.dart';

@Freezed()
abstract class SymbolModel with _$SymbolModel {
  const factory SymbolModel({
    required String name,
    required num kind,
    required SymbolModelLocation location,
  }) = _SymbolModel;

  Map<String, dynamic> toJson() => _$SymbolModelToJson(this as _SymbolModel);
  factory SymbolModel.fromJson(Map<String, Object?> json) =>
      _$SymbolModelFromJson(json);
}

extension SymbolModelMergeX on SymbolModel {
  /// Returns a new [SymbolModel] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SymbolModel merge(SymbolModel other) {
    return copyWith(
      name: other.name,
      kind: other.kind,
      location: other.location,
    );
  }
}
