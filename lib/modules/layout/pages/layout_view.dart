import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/color_pallete.dart';
import 'package:islami/modules/splash/pages/hadith/hadith_view.dart';
import 'package:islami/modules/splash/pages/quran/quran_view.dart';
import 'package:islami/modules/splash/pages/radio/radio_view.dart';
import 'package:islami/modules/splash/pages/tasbeh/tasbeh_view.dart';
import 'package:islami/modules/splash/pages/time/time_view.dart';

class LayoutView extends StatefulWidget {

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> screens =[
    QuranView(),
    HadithView(),
    TasbihView(),
    RadioView(),
    TimeView()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index){
          setState(() {
            currentIndex = index ;
          });

        },

          items: [

            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.quranIcn)),
                activeIcon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18 , vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(66.0)
                    ),
                    child: ImageIcon(AssetImage(AppAssets.quranIcn))) ,
                label: "Quran"
                ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.HadithIcn)),
              activeIcon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18 , vertical: 6),
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(66.0)
                  ),
                  child: ImageIcon(AssetImage(AppAssets.HadithIcn))) ,

              label: "Settings",),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.TasbehIcn)),
              activeIcon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18 , vertical: 6),
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(66.0)
                  ),
                  child: ImageIcon(AssetImage(AppAssets.TasbehIcn))) ,

              label: "Settings",),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.RadioIcn)),
              activeIcon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18 , vertical: 6),
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(66.0)
                  ),
                  child: ImageIcon(AssetImage(AppAssets.RadioIcn))) ,

              label: "Settings",),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.TimeIcn)),
              activeIcon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18 , vertical: 6),
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(66.0)
                  ),
                  child: ImageIcon(AssetImage(AppAssets.TimeIcn))) ,

              label: "Settings",),


          ])
    );
  }
}
