import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_routes_name.dart';
import 'package:islami/core/theme/app_theme_manager.dart';
import 'package:islami/core/theme/color_pallete.dart';
import 'package:islami/modules/layout/pages/layout_view.dart';
import 'package:islami/modules/splash/pages/quran/quran_details_view.dart';
import 'package:islami/modules/splash/pages/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: AppThemeManager.appThemeManager(),

      home: SplashView(),
      initialRoute: AppRoutesName.initial,
      routes:{
        AppRoutesName.initial : (BuildContext context ) => const SplashView(),
        AppRoutesName.layoutRoute : (BuildContext context ) => const LayoutView(),
        AppRoutesName.quranDetailsView : (BuildContext context ) => const QuranDetailsView(),

      },
      debugShowCheckedModeBanner: false,
    );
  }
}


