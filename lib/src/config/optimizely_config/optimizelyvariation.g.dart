// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'optimizelyvariation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OptimizelyVariation _$OptimizelyVariationFromJson(Map<String, dynamic> json) {
  return OptimizelyVariation(
    json['id'] as String,
    json['key'] as String,
    json['featureEnabled'] as bool,
    (json['variablesMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : OptimizelyVariable.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$OptimizelyVariationToJson(
        OptimizelyVariation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'featureEnabled': instance.featureEnabled,
      'variablesMap': instance.variablesMap,
    };
