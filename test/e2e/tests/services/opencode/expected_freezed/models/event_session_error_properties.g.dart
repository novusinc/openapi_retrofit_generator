// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_session_error_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventSessionErrorProperties _$EventSessionErrorPropertiesFromJson(
  Map<String, dynamic> json,
) => _EventSessionErrorProperties(
  sessionId: json['sessionID'] as String?,
  error: json['error'] == null
      ? null
      : EventSessionErrorPropertiesError.fromJson(
          json['error'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$EventSessionErrorPropertiesToJson(
  _EventSessionErrorProperties instance,
) => <String, dynamic>{
  'sessionID': instance.sessionId,
  'error': instance.error,
};
