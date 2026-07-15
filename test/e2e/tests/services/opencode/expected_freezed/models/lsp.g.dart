// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lsp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LspVariant1 _$LspVariant1FromJson(Map<String, dynamic> json) =>
    LspVariant1(disabled: json['disabled'] as bool);

Map<String, dynamic> _$LspVariant1ToJson(LspVariant1 instance) =>
    <String, dynamic>{'disabled': instance.disabled};

LspVariant2 _$LspVariant2FromJson(Map<String, dynamic> json) => LspVariant2(
  command: (json['command'] as List<dynamic>).map((e) => e as String).toList(),
  extensions: (json['extensions'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  disabled: json['disabled'] as bool?,
  env: (json['env'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  initialization: json['initialization'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$LspVariant2ToJson(LspVariant2 instance) =>
    <String, dynamic>{
      'command': instance.command,
      'extensions': instance.extensions,
      'disabled': instance.disabled,
      'env': instance.env,
      'initialization': instance.initialization,
    };
