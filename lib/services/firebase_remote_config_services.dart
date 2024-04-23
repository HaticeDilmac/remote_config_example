import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:remote_config_example/services/firebase_remote_config.dart';

class FirebaseRemoteConfigServices {
  static final FirebaseRemoteConfig _remoteConfig =
      FirebaseRemoteConfig.instance;

  static Future<void> setConfigSettings() async {
    _remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 20), //timeout duration
        minimumFetchInterval: Duration.zero));
    //minimumFetchInterval: How long after changing the last captured data?
  }

  static Future<void> setDefaults() async {
    await _remoteConfig.setDefaults({
      FirebaseRemoteConfigKey.WIDGET_ACTIVATE_KEY: false
    }); //default value is false
  }

  static Future<void> fetchAndActivate() async {
    bool updated =
        await _remoteConfig.fetchAndActivate(); //state config activate
    if (updated) {
      if (kDebugMode) {
        print('Remote Config value updated');
      }
    } else {
      if (kDebugMode) {
        print('Remote Config value is not updated');
      }
    }
  }

 static Future<void> initRemoteConfigFunction() async {
    await setConfigSettings(); //run remote config settings
    await setDefaults(); //get default value remote config
    await fetchAndActivate(); //and remote config activate
  }

  static bool get widgetActivateKey =>
      _remoteConfig.getBool(FirebaseRemoteConfigKey.WIDGET_ACTIVATE_KEY);
}
