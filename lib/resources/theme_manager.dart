import 'package:flutter/material.dart';
import 'package:slash_task/resources/color_manager.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: ColorManager.whiteColor,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: ColorManager.whiteColor,
        surfaceTintColor: ColorManager.whiteColor,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      primaryColor: ColorManager.blackColor,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.blackColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: ColorManager.greyColor,
        unselectedLabelStyle: TextStyle(
          color: ColorManager.greyColor,
          fontSize: 15,
        ),
        selectedItemColor: ColorManager.redColor,
      ));
}
