// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_id.freezed.dart';
part 'partner_id.g.dart';

@Freezed()
abstract class PartnerId with _$PartnerId {
  const factory PartnerId({required String id}) = _PartnerId;

  Map<String, dynamic> toJson() => _$PartnerIdToJson(this as _PartnerId);
  factory PartnerId.fromJson(Map<String, Object?> json) =>
      _$PartnerIdFromJson(json);
}

extension PartnerIdMergeX on PartnerId {
  /// Returns a new [PartnerId] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PartnerId merge(PartnerId other) {
    return copyWith(id: other.id);
  }
}
