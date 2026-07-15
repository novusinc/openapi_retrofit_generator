// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assistant_message_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssistantMessageErrorProviderAuthError
_$AssistantMessageErrorProviderAuthErrorFromJson(Map<String, dynamic> json) =>
    AssistantMessageErrorProviderAuthError(
      name: json['name'] as String,
      data: ProviderAuthErrorData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AssistantMessageErrorProviderAuthErrorToJson(
  AssistantMessageErrorProviderAuthError instance,
) => <String, dynamic>{'name': instance.name, 'data': instance.data};

AssistantMessageErrorUnknownError _$AssistantMessageErrorUnknownErrorFromJson(
  Map<String, dynamic> json,
) => AssistantMessageErrorUnknownError(
  name: json['name'] as String,
  data: UnknownErrorData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AssistantMessageErrorUnknownErrorToJson(
  AssistantMessageErrorUnknownError instance,
) => <String, dynamic>{'name': instance.name, 'data': instance.data};

AssistantMessageErrorMessageOutputLengthError
_$AssistantMessageErrorMessageOutputLengthErrorFromJson(
  Map<String, dynamic> json,
) => AssistantMessageErrorMessageOutputLengthError(
  name: json['name'] as String,
  data: json['data'],
);

Map<String, dynamic> _$AssistantMessageErrorMessageOutputLengthErrorToJson(
  AssistantMessageErrorMessageOutputLengthError instance,
) => <String, dynamic>{'name': instance.name, 'data': instance.data};

AssistantMessageErrorMessageAbortedError
_$AssistantMessageErrorMessageAbortedErrorFromJson(Map<String, dynamic> json) =>
    AssistantMessageErrorMessageAbortedError(
      name: json['name'] as String,
      data: MessageAbortedErrorData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AssistantMessageErrorMessageAbortedErrorToJson(
  AssistantMessageErrorMessageAbortedError instance,
) => <String, dynamic>{'name': instance.name, 'data': instance.data};
