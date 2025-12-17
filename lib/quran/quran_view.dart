import 'package:flutter/material.dart';
import 'package:islami_app_c17_sun_7pm/core/extension/padding_extension.dart';
import 'package:islami_app_c17_sun_7pm/core/gen/assets.gen.dart';
import 'package:islami_app_c17_sun_7pm/core/theme/color_pallete.dart';

/// Git & Github
/// un-versioned files || un-tracked files
/// versioned files || tracked files
///
class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.quranBackgroundImg.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
            child: Assets.images.headerLogoImg.image(),
          ),
          TextField(
            cursorColor: ColorPallete.primaryColor,
            decoration: InputDecoration(
              hintText: 'Sura Name',
              hintStyle: TextStyle(
                color: ColorPallete.generalTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: ColorPallete.primaryColor),
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorPallete.primaryColor),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorPallete.primaryColor),
                borderRadius: BorderRadius.circular(12),
              ),
              prefixIcon: Assets.icons.quranActiveIcn
                  .svg(
                    colorFilter: ColorFilter.mode(
                      ColorPallete.primaryColor,
                      BlendMode.srcIn,
                    ),
                  )
                  .setHorizontalPaddingOnWidget(12),
            ),
          ),
        ],
      ).setHorizontalPaddingOnWidget(20),
    );
  }
}
