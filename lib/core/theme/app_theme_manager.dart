import 'package:flutter/material.dart';
import 'package:islami/core/theme/color_pallete.dart';

abstract class AppThemeManager {

  static ThemeData appThemeManager()=> ThemeData(
  scaffoldBackgroundColor: ColorPallete.scaffoldBackgroundColor ,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: ColorPallete.primaryColor),
    titleTextStyle:TextStyle(
      fontFamily: "Janna",
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: ColorPallete.primaryColor,
    ),
  ),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
  type: BottomNavigationBarType.fixed ,
  backgroundColor: ColorPallete.primaryColor,
  selectedItemColor: Colors.white,
  selectedLabelStyle: TextStyle(
  fontFamily: "Janna",
  fontWeight: FontWeight.bold,
  fontSize: 12
  ),

  unselectedItemColor: ColorPallete.UnSelectedItemColor,
  showUnselectedLabels: false,
  ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPallete.generalTextColor,
      ),
      titleLarge: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPallete.generalTextColor,

      ),
      bodyLarge: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPallete.secondTitleTextColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPallete.generalTextColor,
      )

    )
  );




}