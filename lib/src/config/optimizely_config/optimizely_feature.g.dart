// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'optimizely_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OptimizelyFeature _$OptimizelyFeatureFromJson(Map<String, dynamic> json) {
  return OptimizelyFeature(
    json['id'] as String,
    json['key'] as String,
    (json['experimentsMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : OptimizelyExperiment.fromJson(e as Map<String, dynamic>)),
    ),
    (json['variablesMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : OptimizelyVariable.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$OptimizelyFeatureToJson(OptimizelyFeature instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'experimentsMap': instance.experimentsMap,
      'variablesMap': instance.variablesMap,
    };
