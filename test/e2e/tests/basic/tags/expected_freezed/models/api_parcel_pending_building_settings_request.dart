// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_parcel_pending_building_settings_request.freezed.dart';
part 'api_parcel_pending_building_settings_request.g.dart';

@Freezed()
abstract class ApiParcelPendingBuildingSettingsRequest
    with _$ApiParcelPendingBuildingSettingsRequest {
  const factory ApiParcelPendingBuildingSettingsRequest({
    required bool isDellaManaged,
    @JsonKey(includeIfNull: false) String? externalPropertyId,
    @JsonKey(includeIfNull: false) String? externalBuildingName,
  }) = _ApiParcelPendingBuildingSettingsRequest;

  Map<String, dynamic> toJson() =>
      _$ApiParcelPendingBuildingSettingsRequestToJson(
        this as _ApiParcelPendingBuildingSettingsRequest,
      );
  factory ApiParcelPendingBuildingSettingsRequest.fromJson(
    Map<String, Object?> json,
  ) => _$ApiParcelPendingBuildingSettingsRequestFromJson(json);
}

extension ApiParcelPendingBuildingSettingsRequestMergeX
    on ApiParcelPendingBuildingSettingsRequest {
  /// Returns a new [ApiParcelPendingBuildingSettingsRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ApiParcelPendingBuildingSettingsRequest merge(
    ApiParcelPendingBuildingSettingsRequest other,
  ) {
    return copyWith(
      isDellaManaged: other.isDellaManaged,
      externalPropertyId: other.externalPropertyId,
      externalBuildingName: other.externalBuildingName,
    );
  }
}
