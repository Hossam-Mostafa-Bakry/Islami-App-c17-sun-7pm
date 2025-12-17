import 'package:flutter/material.dart';
import 'package:islami_app_c17_sun_7pm/core/gen/assets.gen.dart';
import 'package:islami_app_c17_sun_7pm/hadith/hadith_view.dart';
import 'package:islami_app_c17_sun_7pm/quran/quran_view.dart';
import 'package:islami_app_c17_sun_7pm/radio/radio_view.dart';
import 'package:islami_app_c17_sun_7pm/sebha/sebha_view.dart';
import 'package:islami_app_c17_sun_7pm/time/time_view.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;

  List<Widget> screens = [
    QuranView(),
    HadithView(),
    SebhaView(),
    RadioView(),
    TimeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.quranInActiveIcn.svg(width: 22, height: 22),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Assets.icons.quranActiveIcn.svg(width: 22, height: 22),
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.hadithInActiveIcn.svg(width: 22, height: 22),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Assets.icons.hadithActiveIcn.svg(width: 22, height: 22),
            ),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.sebhaInActiveIcn.svg(width: 22, height: 22),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Assets.icons.sebahaActiveIcn.svg(width: 22, height: 22),
            ),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.radioInActiveIcn.svg(width: 22, height: 22),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Assets.icons.radioActiveCin.svg(width: 22, height: 22),
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.timeInActiveIcn.svg(width: 22, height: 22),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Assets.icons.timeActiveIcn.svg(width: 22, height: 22),
            ),
            label: 'Time',
          ),
        ],
      ),
    );
  }
}
