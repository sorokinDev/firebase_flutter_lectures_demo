import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

import '../firebase_options.dart';
import 'logger.dart';

abstract class Locator {
  static final _locator = GetIt.instance;

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _initFirebase();
  }

  static Future<void> _initFirebase() async {
    logger.d('Firebase initialization started');

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    logger.d('Firebase initialized');
  }

  static Future<void> dispose() async {}
}
