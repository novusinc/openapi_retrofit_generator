// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'author.dart';

part 'partner.freezed.dart';
part 'partner.g.dart';

@Freezed()
abstract class Partner with _$Partner {
  const factory Partner({
    required String id,
    @JsonKey(name: 'observation_id') required String observationId,
    Author? author,
    String? avatar,
  }) = _Partner;

  Map<String, dynamic> toJson() => _$PartnerToJson(this as _Partner);
  factory Partner.fromJson(Map<String, Object?> json) =>
      _$PartnerFromJson(json);
}

extension PartnerMergeX on Partner {
  /// Returns a new [Partner] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Partner merge(Partner other) {
    return copyWith(
      author: other.author,
      id: other.id,
      observationId: other.observationId,
      avatar: other.avatar,
    );
  }
}
