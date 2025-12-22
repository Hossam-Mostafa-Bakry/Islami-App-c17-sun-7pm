import 'package:flutter/material.dart';
import 'package:islami_app_c17_sun_7pm/core/gen/assets.gen.dart';
import 'package:islami_app_c17_sun_7pm/core/theme/color_pallete.dart';
import 'package:islami_app_c17_sun_7pm/models/hadith_data.dart';

class HadithCardWidget extends StatelessWidget {
  final HadithData hadithData;

  const HadithCardWidget({super.key, required this.hadithData});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: ColorPallete.primaryColor,
        borderRadius: BorderRadius.circular(20),
        // image: DecorationImage(
        //   image: Assets.images.hadithCardBackgroundImg.provider(),
        //
        //   fit: BoxFit.cover,
        // ),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.images.imgLeftCorner.image(
                      width: 92,
                      color: Colors.black,
                    ),
                    Assets.images.imgRightCorner.image(
                      width: 92,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Expanded(child: Assets.images.hadithCardBackgroundImg.image()),
              Assets.images.imgBottomDecoration.image(color: Colors.black),
            ],
          ),
          SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40),
                Text(
                  hadithData.hadithTitle,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    hadithData.hadithBody,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
