import 'package:flutter/material.dart';
import 'package:slash_task/features/dashboard/presentation/view/dashboard.dart';
import 'package:slash_task/resources/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: Dashboard(),
    );
  }
}
