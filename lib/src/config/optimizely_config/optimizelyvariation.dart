import 'package:json_annotation/json_annotation.dart';
import 'package:optimizely/src/config/optimizely_config/optimizelyvariable.dart';
part 'optimizelyvariation.g.dart';

@JsonSerializable()
class OptimizelyVariation {
  String id;
  String key;
  bool featureEnabled;
  Map<String, OptimizelyVariable> variablesMap;

  OptimizelyVariation(
      this.id, this.key, this.featureEnabled, this.variablesMap);

  factory OptimizelyVariation.fromJson(Map<String, dynamic> json) =>
      _$OptimizelyVariationFromJson(json);

  Map<String, dynamic> toJson() => _$OptimizelyVariationToJson(this);
}
