// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'optimizelyexperiment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OptimizelyExperiment _$OptimizelyExperimentFromJson(Map<String, dynamic> json) {
  return OptimizelyExperiment(
    json['id'] as String,
    json['key'] as String,
    (json['variationsMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : OptimizelyVariation.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$OptimizelyExperimentToJson(
        OptimizelyExperiment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'variationsMap': instance.variationsMap,
    };
