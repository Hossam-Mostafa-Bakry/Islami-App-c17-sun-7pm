import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c17_sun_7pm/core/gen/assets.gen.dart';
import 'package:islami_app_c17_sun_7pm/core/theme/color_pallete.dart';
import 'package:islami_app_c17_sun_7pm/models/sura_data.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = '/quran_details';

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    SuraData suraData = ModalRoute.of(context)!.settings.arguments as SuraData;

    /// load data from assets files
    _loadQuranText(suraData.suraNumber.toString());

    return Scaffold(
      backgroundColor: Color(0xFF202020),
      appBar: AppBar(title: Text(suraData.suraNameEN)),
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Assets.images.imgBottomDecoration.image(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 10,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Assets.images.imgLeftCorner.image(width: 92),
                      Text(
                        suraData.suraNameAR,
                        style: theme.textTheme.headlineSmall?.copyWith(
                          color: ColorPallete.primaryColor,
                        ),
                      ),
                      Assets.images.imgRightCorner.image(width: 92),
                    ],
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Text(
                          "[${index + 1}] ${verses[index]}",
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: ColorPallete.primaryColor,
                          ),
                          textAlign: TextAlign.center,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10);
                      },
                      itemCount: verses.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> verses = [];

  /// sync vs async
  Future<void> _loadQuranText(String suraNumber) async {
    String quranText = await rootBundle.loadString(
      "assets/files/$suraNumber.txt",
    );

    verses = quranText.split("\n");
    setState(() {});
  }
}
