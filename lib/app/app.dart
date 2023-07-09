import 'package:firebase_lectures/app/routes.dart';
import 'package:flutter/material.dart';

import 'di.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.auth,
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
