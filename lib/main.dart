import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/di.dart';

Future<void> main() async {
  await Locator.init();
  runApp(const App());
}
