import 'package:firebase_lectures/app/routes.dart';
import 'package:flutter/material.dart';

import 'di.dart';
import 'logger.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final userRepository = Locator.userRepository;

  @override
  Widget build(BuildContext context) {
    final isAuthorized = userRepository.isAuthorized;
    logger.d('User authorized: $isAuthorized');

    return MaterialApp(
      initialRoute: isAuthorized ? AppRoutes.lectures : AppRoutes.auth,
      routes: AppRoutes.routes,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
      ),
    );
  }

  @override
  void dispose() {
    Locator.dispose();
    super.dispose();
  }
}
