import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:islami_app_c17_sun_7pm/core/extension/padding_extension.dart';
import 'package:islami_app_c17_sun_7pm/core/gen/assets.gen.dart';
import 'package:islami_app_c17_sun_7pm/models/sura_data.dart';

class SuraCardWidget extends StatelessWidget {
  final Function onTap;
  final SuraData suraData;

  const SuraCardWidget({
    super.key,
    required this.suraData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Bounceable(
      onTap: () {
        onTap();
      },
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.icons.suraNumberIcn.provider(),
              ),
            ),
            child: Text(
              suraData.suraNumber,
              style: theme.textTheme.titleMedium?.copyWith(),
            ),
          ),
          SizedBox(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraData.suraNameEN,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                "${suraData.suraVersesCount} Verses  ",
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            suraData.suraNameAR,
            style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
        ],
      ).setHorizontalPaddingOnWidget(20),
    );
  }
}
