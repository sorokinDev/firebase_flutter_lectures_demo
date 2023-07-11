import 'package:firebase_remote_config/firebase_remote_config.dart';

class ConfigRepository {
  FirebaseRemoteConfig _remoteConfig;

  ConfigRepository(this._remoteConfig);

  bool get useDarkTheme => _remoteConfig.getBool(_ConfigFields.darkTheme);

  Future<void> init() async {
    _remoteConfig.setDefaults({
      _ConfigFields.darkTheme: false,
    });
    await _remoteConfig.fetchAndActivate();
  }
}

abstract class _ConfigFields {
  static const darkTheme = 'dark_theme';
}
