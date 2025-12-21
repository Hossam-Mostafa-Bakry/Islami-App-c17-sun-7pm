import 'package:flutter/material.dart';
import 'package:islami_app_c17_sun_7pm/quran/quran_details_view.dart';
import 'package:islami_app_c17_sun_7pm/splash/splash_view.dart';

import 'core/theme/theme_manager.dart';
import 'layout/layout_view.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<int> numbers = [12, 10, 4, 100];
    numbers[0];

    /// index 0 => 12
    /// index 1 => 10
    /// index 2 => 4
    /// index 3 => 100
    Map<String, int> mapNumbers = {
      "elementOne": 12,
      "elementTwo": 10,
      "elementThree": 4,
      "elementFour": 100,
    };

    return MaterialApp(
      theme: ThemeManager.theme,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => SplashView(),
        LayoutView.routeName: (context) => LayoutView(),
        QuranDetailsView.routeName: (context) => QuranDetailsView(),
      },
      // home: SplashView(),
    );
  }
}
