import 'package:flutter/material.dart';
import 'package:islami_app_c17_sun_7pm/splash/splash_view.dart';

import 'core/theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeManager.theme,
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
