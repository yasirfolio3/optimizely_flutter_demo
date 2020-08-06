// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'optimizelyvariable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OptimizelyVariable _$OptimizelyVariableFromJson(Map<String, dynamic> json) {
  return OptimizelyVariable(
    json['id'] as String,
    json['key'] as String,
    json['type'] as String,
    json['value'] as String,
  );
}

Map<String, dynamic> _$OptimizelyVariableToJson(OptimizelyVariable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'type': instance.type,
      'value': instance.value,
    };
