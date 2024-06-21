import 'package:flutter/material.dart';
import 'package:slash_task/features/dashboard/presentation/view/dashboard.dart';
import 'package:slash_task/resources/theme_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          theme:ThemeManager.lightTheme,
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: Dashboard(),
    );
  }
}
