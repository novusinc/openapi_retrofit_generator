// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_file_edited_properties.dart';

part 'event_file_edited.freezed.dart';
part 'event_file_edited.g.dart';

@Freezed()
abstract class EventFileEdited with _$EventFileEdited {
  const factory EventFileEdited({
    required String type,
    required EventFileEditedProperties properties,
  }) = _EventFileEdited;

  Map<String, dynamic> toJson() =>
      _$EventFileEditedToJson(this as _EventFileEdited);
  factory EventFileEdited.fromJson(Map<String, Object?> json) =>
      _$EventFileEditedFromJson(json);
}

extension EventFileEditedMergeX on EventFileEdited {
  /// Returns a new [EventFileEdited] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventFileEdited merge(EventFileEdited other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
