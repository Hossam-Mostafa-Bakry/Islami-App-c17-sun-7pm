import 'package:flutter/material.dart';
import 'package:islami_app_c17_sun_7pm/layout/layout_view.dart';
import 'package:islami_app_c17_sun_7pm/main.dart';

class SplashView extends StatefulWidget {
  static const String routeName = '/splash';

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  /// Flutter Life Cycle
  ///
  /// first function to call
  @override
  void initState() {
    super.initState();

    // context
    // Navigation
    // inherited widget

    Future.delayed(Duration(seconds: 2), () {
      /// Navigator.pushReplacement
      Navigator.pushReplacementNamed(
        navigatorKey.currentContext!,
        LayoutView.routeName,
      );
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) {
      //       return LayoutView();
      //     },
      //   ),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_background_img.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
