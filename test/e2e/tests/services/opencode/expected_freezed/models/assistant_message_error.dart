// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'message_aborted_error_data.dart';
import 'provider_auth_error_data.dart';
import 'unknown_error_data.dart';

part 'assistant_message_error.g.dart';

class AssistantMessageError {
  final Map<String, dynamic> _json;

  const AssistantMessageError(this._json);

  factory AssistantMessageError.fromJson(Map<String, dynamic> json) =>
      AssistantMessageError(json);

  Map<String, dynamic> toJson() => _json;

  AssistantMessageErrorProviderAuthError toProviderAuthError() =>
      AssistantMessageErrorProviderAuthError.fromJson(_json);
  AssistantMessageErrorUnknownError toUnknownError() =>
      AssistantMessageErrorUnknownError.fromJson(_json);
  AssistantMessageErrorMessageOutputLengthError toMessageOutputLengthError() =>
      AssistantMessageErrorMessageOutputLengthError.fromJson(_json);
  AssistantMessageErrorMessageAbortedError toMessageAbortedError() =>
      AssistantMessageErrorMessageAbortedError.fromJson(_json);
}

@JsonSerializable()
class AssistantMessageErrorProviderAuthError {
  final String name;
  final ProviderAuthErrorData data;

  const AssistantMessageErrorProviderAuthError({
    required this.name,
    required this.data,
  });

  factory AssistantMessageErrorProviderAuthError.fromJson(
    Map<String, Object?> json,
  ) => _$AssistantMessageErrorProviderAuthErrorFromJson(json);

  Map<String, Object?> toJson() =>
      _$AssistantMessageErrorProviderAuthErrorToJson(this);
}

@JsonSerializable()
class AssistantMessageErrorUnknownError {
  final String name;
  final UnknownErrorData data;

  const AssistantMessageErrorUnknownError({
    required this.name,
    required this.data,
  });

  factory AssistantMessageErrorUnknownError.fromJson(
    Map<String, Object?> json,
  ) => _$AssistantMessageErrorUnknownErrorFromJson(json);

  Map<String, Object?> toJson() =>
      _$AssistantMessageErrorUnknownErrorToJson(this);
}

@JsonSerializable()
class AssistantMessageErrorMessageOutputLengthError {
  final String name;
  final dynamic data;

  const AssistantMessageErrorMessageOutputLengthError({
    required this.name,
    required this.data,
  });

  factory AssistantMessageErrorMessageOutputLengthError.fromJson(
    Map<String, Object?> json,
  ) => _$AssistantMessageErrorMessageOutputLengthErrorFromJson(json);

  Map<String, Object?> toJson() =>
      _$AssistantMessageErrorMessageOutputLengthErrorToJson(this);
}

@JsonSerializable()
class AssistantMessageErrorMessageAbortedError {
  final String name;
  final MessageAbortedErrorData data;

  const AssistantMessageErrorMessageAbortedError({
    required this.name,
    required this.data,
  });

  factory AssistantMessageErrorMessageAbortedError.fromJson(
    Map<String, Object?> json,
  ) => _$AssistantMessageErrorMessageAbortedErrorFromJson(json);

  Map<String, Object?> toJson() =>
      _$AssistantMessageErrorMessageAbortedErrorToJson(this);
}
