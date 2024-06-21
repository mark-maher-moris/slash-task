import 'package:flutter/material.dart';
import 'package:slash_task/resources/string_manager.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(StringManager.comingSoon),),);
  }
}