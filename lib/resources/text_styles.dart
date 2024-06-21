import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/resources/color_manager.dart';
import '../core/utils/responsive.dart';

class TextStylesManager {
  static TextStyle headline1(BuildContext context) => TextStyle(
        fontSize: Responsive.isMobile(context)
            ? 20
            : Responsive.isWeb(context)
                ? 25
                : 20,
        fontWeight: FontWeight.bold,
      );

  static TextStyle bodyText1(BuildContext context) => TextStyle(
        fontSize: Responsive.isMobile(context)
            ? 14
            : Responsive.isWeb(context)
                ? 18
                : 20,
      );
  static TextStyle priceStyle(BuildContext context) => TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: Responsive.isMobile(context)
            ? 13
            : Responsive.isWeb(context)
                ? 16
                : 20,
      );
  static TextStyle bodyText2(BuildContext context) => TextStyle(
        color: ColorManager.greyColor,
        fontSize: Responsive.isMobile(context)
            ? 12
            : Responsive.isWeb(context)
                ? 16
                : 20,
      );

  // Define more text styles as needed
}
