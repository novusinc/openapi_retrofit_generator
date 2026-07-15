// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'message_aborted_error_data.dart';
import 'provider_auth_error_data.dart';
import 'unknown_error_data.dart';

part 'event_session_error_properties_error.g.dart';

class EventSessionErrorPropertiesError {
  final Map<String, dynamic> _json;

  const EventSessionErrorPropertiesError(this._json);

  factory EventSessionErrorPropertiesError.fromJson(
    Map<String, dynamic> json,
  ) => EventSessionErrorPropertiesError(json);

  Map<String, dynamic> toJson() => _json;

  EventSessionErrorPropertiesErrorProviderAuthError toProviderAuthError() =>
      EventSessionErrorPropertiesErrorProviderAuthError.fromJson(_json);
  EventSessionErrorPropertiesErrorUnknownError toUnknownError() =>
      EventSessionErrorPropertiesErrorUnknownError.fromJson(_json);
  EventSessionErrorPropertiesErrorMessageOutputLengthError
  toMessageOutputLengthError() =>
      EventSessionErrorPropertiesErrorMessageOutputLengthError.fromJson(_json);
  EventSessionErrorPropertiesErrorMessageAbortedError toMessageAbortedError() =>
      EventSessionErrorPropertiesErrorMessageAbortedError.fromJson(_json);
}

@JsonSerializable()
class EventSessionErrorPropertiesErrorProviderAuthError {
  final String name;
  final ProviderAuthErrorData data;

  const EventSessionErrorPropertiesErrorProviderAuthError({
    required this.name,
    required this.data,
  });

  factory EventSessionErrorPropertiesErrorProviderAuthError.fromJson(
    Map<String, Object?> json,
  ) => _$EventSessionErrorPropertiesErrorProviderAuthErrorFromJson(json);

  Map<String, Object?> toJson() =>
      _$EventSessionErrorPropertiesErrorProviderAuthErrorToJson(this);
}

@JsonSerializable()
class EventSessionErrorPropertiesErrorUnknownError {
  final String name;
  final UnknownErrorData data;

  const EventSessionErrorPropertiesErrorUnknownError({
    required this.name,
    required this.data,
  });

  factory EventSessionErrorPropertiesErrorUnknownError.fromJson(
    Map<String, Object?> json,
  ) => _$EventSessionErrorPropertiesErrorUnknownErrorFromJson(json);

  Map<String, Object?> toJson() =>
      _$EventSessionErrorPropertiesErrorUnknownErrorToJson(this);
}

@JsonSerializable()
class EventSessionErrorPropertiesErrorMessageOutputLengthError {
  final String name;
  final dynamic data;

  const EventSessionErrorPropertiesErrorMessageOutputLengthError({
    required this.name,
    required this.data,
  });

  factory EventSessionErrorPropertiesErrorMessageOutputLengthError.fromJson(
    Map<String, Object?> json,
  ) => _$EventSessionErrorPropertiesErrorMessageOutputLengthErrorFromJson(json);

  Map<String, Object?> toJson() =>
      _$EventSessionErrorPropertiesErrorMessageOutputLengthErrorToJson(this);
}

@JsonSerializable()
class EventSessionErrorPropertiesErrorMessageAbortedError {
  final String name;
  final MessageAbortedErrorData data;

  const EventSessionErrorPropertiesErrorMessageAbortedError({
    required this.name,
    required this.data,
  });

  factory EventSessionErrorPropertiesErrorMessageAbortedError.fromJson(
    Map<String, Object?> json,
  ) => _$EventSessionErrorPropertiesErrorMessageAbortedErrorFromJson(json);

  Map<String, Object?> toJson() =>
      _$EventSessionErrorPropertiesErrorMessageAbortedErrorToJson(this);
}
