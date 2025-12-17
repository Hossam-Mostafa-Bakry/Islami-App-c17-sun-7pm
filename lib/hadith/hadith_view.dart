import 'package:flutter/material.dart';
import 'package:islami_app_c17_sun_7pm/core/gen/assets.gen.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.hadithBackgroundImg.provider(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
