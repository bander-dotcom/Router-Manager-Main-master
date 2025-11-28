import 'package:flutter/material.dart';
import '../helpers/RouterManager.dart';
import '../constants/app-routers.dart';
import '../constants/app-page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RouterManager.navigatorKey,
      debugShowCheckedModeBanner: false,
      routes: AppPages.routes,
      initialRoute: AppRoutes.home,
    );
  }
}
