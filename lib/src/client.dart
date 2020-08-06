// // OptimizelyClient is the entry point to the Optimizely SDK
// type OptimizelyClient struct {
import 'package:optimizely/src/config/config_manager.dart';
import 'package:optimizely/src/config/optimizely_config/optimizely_config.dart';

class OptimizelyClient {
  ProjectConfigManager _configManager;

  factory OptimizelyClient.withConfigManager(
      ProjectConfigManager configManager) {
    OptimizelyClient client = OptimizelyClient(configManager);
    return client;
  }

  OptimizelyClient(this._configManager);

  OptimizelyConfig getOptimizelyConfig() {
    return _configManager.getOptimizelyConfig();
  }
}
