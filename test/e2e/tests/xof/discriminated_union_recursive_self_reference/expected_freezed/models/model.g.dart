// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Model _$ModelFromJson(Map<String, dynamic> json) => _Model(
  type: ModelTypeType.fromJson(json['type'] as String),
  id: json['id'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$ModelToJson(_Model instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'name': instance.name,
};
