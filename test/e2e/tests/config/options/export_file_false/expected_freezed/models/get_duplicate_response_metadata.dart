// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_duplicate_response_metadata.freezed.dart';
part 'get_duplicate_response_metadata.g.dart';

@Freezed()
abstract class GetDuplicateResponseMetadata
    with _$GetDuplicateResponseMetadata {
  const factory GetDuplicateResponseMetadata({String? id, int? value}) =
      _GetDuplicateResponseMetadata;

  Map<String, dynamic> toJson() => _$GetDuplicateResponseMetadataToJson(
    this as _GetDuplicateResponseMetadata,
  );
  factory GetDuplicateResponseMetadata.fromJson(Map<String, Object?> json) =>
      _$GetDuplicateResponseMetadataFromJson(json);
}

extension GetDuplicateResponseMetadataMergeX on GetDuplicateResponseMetadata {
  /// Returns a new [GetDuplicateResponseMetadata] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  GetDuplicateResponseMetadata merge(GetDuplicateResponseMetadata other) {
    return copyWith(id: other.id, value: other.value);
  }
}
