// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_parcel_pending_building_settings.freezed.dart';
part 'api_parcel_pending_building_settings.g.dart';

@Freezed()
abstract class ApiParcelPendingBuildingSettings
    with _$ApiParcelPendingBuildingSettings {
  const factory ApiParcelPendingBuildingSettings({
    required bool isDellaManaged,
    @JsonKey(includeIfNull: false) String? externalPropertyId,
    @JsonKey(includeIfNull: false) String? externalBuildingName,
  }) = _ApiParcelPendingBuildingSettings;

  Map<String, dynamic> toJson() => _$ApiParcelPendingBuildingSettingsToJson(
    this as _ApiParcelPendingBuildingSettings,
  );
  factory ApiParcelPendingBuildingSettings.fromJson(
    Map<String, Object?> json,
  ) => _$ApiParcelPendingBuildingSettingsFromJson(json);
}

extension ApiParcelPendingBuildingSettingsMergeX
    on ApiParcelPendingBuildingSettings {
  /// Returns a new [ApiParcelPendingBuildingSettings] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ApiParcelPendingBuildingSettings merge(
    ApiParcelPendingBuildingSettings other,
  ) {
    return copyWith(
      isDellaManaged: other.isDellaManaged,
      externalPropertyId: other.externalPropertyId,
      externalBuildingName: other.externalBuildingName,
    );
  }
}
