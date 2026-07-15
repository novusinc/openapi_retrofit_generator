// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'http_status.dart';
import 'priority.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@Freezed()
abstract class Item with _$Item {
  const factory Item({
    required int id,
    required HttpStatus status,
    required Priority priority,
  }) = _Item;

  Map<String, dynamic> toJson() => _$ItemToJson(this as _Item);
  factory Item.fromJson(Map<String, Object?> json) => _$ItemFromJson(json);
}

extension ItemMergeX on Item {
  /// Returns a new [Item] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Item merge(Item other) {
    return copyWith(
      id: other.id,
      status: other.status,
      priority: other.priority,
    );
  }
}
