// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_session_error_properties_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventSessionErrorPropertiesErrorProviderAuthError
_$EventSessionErrorPropertiesErrorProviderAuthErrorFromJson(
  Map<String, dynamic> json,
) => EventSessionErrorPropertiesErrorProviderAuthError(
  name: json['name'] as String,
  data: ProviderAuthErrorData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EventSessionErrorPropertiesErrorProviderAuthErrorToJson(
  EventSessionErrorPropertiesErrorProviderAuthError instance,
) => <String, dynamic>{'name': instance.name, 'data': instance.data};

EventSessionErrorPropertiesErrorUnknownError
_$EventSessionErrorPropertiesErrorUnknownErrorFromJson(
  Map<String, dynamic> json,
) => EventSessionErrorPropertiesErrorUnknownError(
  name: json['name'] as String,
  data: UnknownErrorData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EventSessionErrorPropertiesErrorUnknownErrorToJson(
  EventSessionErrorPropertiesErrorUnknownError instance,
) => <String, dynamic>{'name': instance.name, 'data': instance.data};

EventSessionErrorPropertiesErrorMessageOutputLengthError
_$EventSessionErrorPropertiesErrorMessageOutputLengthErrorFromJson(
  Map<String, dynamic> json,
) => EventSessionErrorPropertiesErrorMessageOutputLengthError(
  name: json['name'] as String,
  data: json['data'],
);

Map<String, dynamic>
_$EventSessionErrorPropertiesErrorMessageOutputLengthErrorToJson(
  EventSessionErrorPropertiesErrorMessageOutputLengthError instance,
) => <String, dynamic>{'name': instance.name, 'data': instance.data};

EventSessionErrorPropertiesErrorMessageAbortedError
_$EventSessionErrorPropertiesErrorMessageAbortedErrorFromJson(
  Map<String, dynamic> json,
) => EventSessionErrorPropertiesErrorMessageAbortedError(
  name: json['name'] as String,
  data: MessageAbortedErrorData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic>
_$EventSessionErrorPropertiesErrorMessageAbortedErrorToJson(
  EventSessionErrorPropertiesErrorMessageAbortedError instance,
) => <String, dynamic>{'name': instance.name, 'data': instance.data};
