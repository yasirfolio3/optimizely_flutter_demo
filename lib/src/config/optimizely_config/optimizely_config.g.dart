// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'optimizely_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OptimizelyConfig _$OptimizelyConfigFromJson(Map<String, dynamic> json) {
  return OptimizelyConfig(
    json['revision'] as String,
    (json['experimentsMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : OptimizelyExperiment.fromJson(e as Map<String, dynamic>)),
    ),
    (json['featuresMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : OptimizelyFeature.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$OptimizelyConfigToJson(OptimizelyConfig instance) =>
    <String, dynamic>{
      'revision': instance.revision,
      'experimentsMap': instance.experimentsMap,
      'featuresMap': instance.featuresMap,
    };
