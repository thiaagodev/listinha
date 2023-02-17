import 'package:realm/realm.dart';

import '../../shared/services/reaml/models/configuration_model.dart';

abstract class ConfigurationService {
  ConfigurationModel getConfiguration();

  void saveConfiguration(String themeModeName, DateTime? syncDate);

  void deleteAll();
}

class ConfigurationServiceImpl implements ConfigurationService {
  final Realm realm;

  ConfigurationServiceImpl(this.realm);

  @override
  void deleteAll() {
    realm.deleteAll();
  }

  @override
  ConfigurationModel getConfiguration() {
    return realm.all<ConfigurationModel>().first;
  }

  @override
  void saveConfiguration(String themeModeName, DateTime? syncDate) {
    final model = getConfiguration();
    realm.write(() {
      model.syncDate = syncDate;
      model.themeModeName = themeModeName;
    });
  }
}
