import 'package:flutter/material.dart';

import '../presentation/auth_page.dart';
import '../presentation/lectures_page.dart';
import '../presentation/profile_page.dart';

abstract class AppRoutes {
  static const auth = '/auth';
  static const lectures = '/lectures';
  static const profile = '/profile';

  static final routes = <String, WidgetBuilder>{
    auth: (_) => AuthPage(),
    lectures: (_) => LecturesPage(),
    profile: (_) => ProfilePage(),
  };
}
