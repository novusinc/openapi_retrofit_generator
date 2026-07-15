// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'draft_item.freezed.dart';
part 'draft_item.g.dart';

@Freezed()
abstract class DraftItem with _$DraftItem {
  const factory DraftItem({
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(includeIfNull: false) String? content,
    @JsonKey(includeIfNull: false) bool? isDraft,
  }) = _DraftItem;

  Map<String, dynamic> toJson() => _$DraftItemToJson(this as _DraftItem);
  factory DraftItem.fromJson(Map<String, Object?> json) =>
      _$DraftItemFromJson(json);
}

extension DraftItemMergeX on DraftItem {
  /// Returns a new [DraftItem] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  DraftItem merge(DraftItem other) {
    return copyWith(
      id: other.id,
      content: other.content,
      isDraft: other.isDraft,
    );
  }
}
