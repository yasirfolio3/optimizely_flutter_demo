import 'package:optimizely/src/config/datafile_project_config.dart';
import 'package:optimizely/src/config/optimizely_config/optimizely_config.dart';
import 'package:optimizely/src/config/project_config.dart';

abstract class ProjectConfigManager {
  ProjectConfig getConfig();
  OptimizelyConfig getOptimizelyConfig();
}

class StaticProjectConfigManager extends ProjectConfigManager {
  String datafile;
  ProjectConfig config;
  OptimizelyConfig optimizelyConfig;

  StaticProjectConfigManager(String datafile) {
    this.datafile = datafile;
    this.config = DatafileProjectConfig.fromDatafile(datafile);
  }

  @override
  ProjectConfig getConfig() {
    return this.config;
  }

  @override
  OptimizelyConfig getOptimizelyConfig() {
    if (this.config == null) {
      return null;
    }

    if (this.optimizelyConfig != null) {
      return this.optimizelyConfig;
    }

    this.optimizelyConfig = OptimizelyConfig.fromProjectConfig(this.config);
    return this.optimizelyConfig;
  }
}
