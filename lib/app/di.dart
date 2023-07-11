import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_lectures/data/config_repository.dart';
import 'package:firebase_lectures/data/lecture_repository.dart';
import 'package:firebase_lectures/data/user_repository.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

import '../firebase_options.dart';
import 'logger.dart';

abstract class Locator {
  static final _locator = GetIt.instance;

  static FirebaseAnalytics get analytics => FirebaseAnalytics.instance;

  static UserRepository get userRepository => _locator<UserRepository>();
  static LecturesRepository get lecturesRepository =>
      _locator<LecturesRepository>();
  static ConfigRepository get configRepository => _locator<ConfigRepository>();

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _initFirebase();
    _initCrashlytics();

    _locator.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
    _locator.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance,
    );
    _locator.registerLazySingleton<FirebaseRemoteConfig>(
      () => FirebaseRemoteConfig.instance,
    );

    _locator.registerSingleton<UserRepository>(
      UserRepository(
        _locator<FirebaseAuth>(),
      ),
    );
    _locator.registerSingleton<LecturesRepository>(
      LecturesRepository(
        _locator<FirebaseFirestore>(),
      ),
    );
    final configRepo = ConfigRepository(_locator<FirebaseRemoteConfig>());
    await configRepo.init();
    _locator.registerSingleton<ConfigRepository>(configRepo);
  }

  static Future<void> _initFirebase() async {
    logger.d('Firebase initialization started');

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    logger.d('Firebase initialized');
  }

  static void _initCrashlytics() {
    FlutterError.onError = (errorDetails) {
      logger.d('Caught error in FlutterError.onError');
      FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      logger.d('Caught error in PlatformDispatcher.onError');
      FirebaseCrashlytics.instance.recordError(
        error,
        stack,
        fatal: true,
      );
      return true;
    };
    logger.d('Crashlytics initialized');
  }

  static Future<void> dispose() async {}
}
