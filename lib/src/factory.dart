import 'package:optimizely/src/client.dart';

import 'package:optimizely/src/config/config_manager.dart';

class OptimizelyFactory {
  String _datafile;

  OptimizelyFactory(this._datafile);

  OptimizelyClient client() {
    return OptimizelyClient.withConfigManager(
        StaticProjectConfigManager(_datafile));
  }
}
