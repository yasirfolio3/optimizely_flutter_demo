import 'package:json_annotation/json_annotation.dart';
import 'package:optimizely/src/config/optimizely_config/optimizelyexperiment.dart';
import 'package:optimizely/src/config/optimizely_config/optimizelyvariable.dart';
part 'optimizely_feature.g.dart';

@JsonSerializable()
class OptimizelyFeature {
  String id;
  String key;
  Map<String, OptimizelyExperiment> experimentsMap;
  Map<String, OptimizelyVariable> variablesMap;

  OptimizelyFeature(this.id, this.key, this.experimentsMap, this.variablesMap);

  factory OptimizelyFeature.fromJson(Map<String, dynamic> json) =>
      _$OptimizelyFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$OptimizelyFeatureToJson(this);
}
