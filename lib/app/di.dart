import 'package:get_it/get_it.dart';

abstract class Locator {
  static final _locator = GetIt.instance;

  static Future<void> init() async {}

  static Future<void> dispose() async {}
}
