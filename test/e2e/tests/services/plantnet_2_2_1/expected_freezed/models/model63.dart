// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model63.freezed.dart';
part 'model63.g.dart';

@Freezed()
abstract class Model63 with _$Model63 {
  const factory Model63({
    String? type,
    String? format,
    String? identifier,
    @JsonKey(name: 'large_url') String? largeUrl,
  }) = _Model63;

  Map<String, dynamic> toJson() => _$Model63ToJson(this as _Model63);
  factory Model63.fromJson(Map<String, Object?> json) =>
      _$Model63FromJson(json);
}

extension Model63MergeX on Model63 {
  /// Returns a new [Model63] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model63 merge(Model63 other) {
    return copyWith(
      type: other.type,
      format: other.format,
      identifier: other.identifier,
      largeUrl: other.largeUrl,
    );
  }
}
