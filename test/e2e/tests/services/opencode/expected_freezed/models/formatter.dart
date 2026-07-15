// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'formatter.freezed.dart';
part 'formatter.g.dart';

@Freezed()
abstract class Formatter with _$Formatter {
  const factory Formatter({
    bool? disabled,
    List<String>? command,
    Map<String, String>? environment,
    List<String>? extensions,
  }) = _Formatter;

  Map<String, dynamic> toJson() => _$FormatterToJson(this as _Formatter);
  factory Formatter.fromJson(Map<String, Object?> json) =>
      _$FormatterFromJson(json);
}

extension FormatterMergeX on Formatter {
  /// Returns a new [Formatter] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Formatter merge(Formatter other) {
    return copyWith(
      disabled: other.disabled,
      command: other.command,
      environment: other.environment,
      extensions: other.extensions,
    );
  }
}
