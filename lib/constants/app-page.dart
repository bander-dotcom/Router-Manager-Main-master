import 'package:flutter/material.dart';
import '../screens/home_page.dart';
import '../screens/profile.dart';
import '../screens/setting.dart';
import 'app-routers.dart';

class AppPages {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.home: (_) => HomePage(),
    AppRoutes.profile: (_) => Profile(),
    AppRoutes.setting: (_) => Setting(),
  };
}