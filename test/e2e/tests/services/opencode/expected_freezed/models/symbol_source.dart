// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_part_source_text.dart';
import 'range.dart';

part 'symbol_source.freezed.dart';
part 'symbol_source.g.dart';

@Freezed()
abstract class SymbolSource with _$SymbolSource {
  const factory SymbolSource({
    required FilePartSourceText text,
    required String type,
    required String path,
    required Range range,
    required String name,
    required int kind,
  }) = _SymbolSource;

  Map<String, dynamic> toJson() => _$SymbolSourceToJson(this as _SymbolSource);
  factory SymbolSource.fromJson(Map<String, Object?> json) =>
      _$SymbolSourceFromJson(json);
}

extension SymbolSourceMergeX on SymbolSource {
  /// Returns a new [SymbolSource] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SymbolSource merge(SymbolSource other) {
    return copyWith(
      text: other.text,
      type: other.type,
      path: other.path,
      range: other.range,
      name: other.name,
      kind: other.kind,
    );
  }
}
