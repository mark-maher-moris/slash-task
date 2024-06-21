import 'package:flutter/material.dart';
import 'package:slash_task/resources/color_manager.dart';

ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: ColorManager.whiteColor,
    appBarTheme: AppBarTheme(backgroundColor: ColorManager.whiteColor),
    primaryColor: ColorManager.blackColor,
    useMaterial3: true,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: ColorManager.greyColor,
      unselectedLabelStyle: TextStyle(
        color: ColorManager.greyColor,
        fontSize: 15,
      ),
      selectedItemColor: ColorManager.blackColor,
    ));
