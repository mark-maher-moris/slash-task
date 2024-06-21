import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:slash_task/features/home/presentation/screens/home_screen.dart';
import 'package:slash_task/resources/string_manager.dart';
import '../../../coming_soon/presentation/view/coming_soon.dart';
import '../widgets/custom_appbar.dart';

List<Widget> screens = [HomeScreen(), ComingSoon(), ComingSoon(), ComingSoon()];

List<BottomNavigationBarItem> bottomNavBarItems = [
  BottomNavigationBarItem(
    icon: Icon(
      IconBroken.Home,
    ),
    label: StringManager.home,
  ),
  BottomNavigationBarItem(
      icon: Icon(
        IconBroken.Heart,
      ),
      label: StringManager.home),
  BottomNavigationBarItem(
      icon: Icon(
        IconBroken.Bag,
      ),
      label: StringManager.myCart),
  BottomNavigationBarItem(
      icon: Icon(
        IconBroken.Profile,
      ),
      label: StringManager.profile)
];

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: bottomNavBarItems),
      body: screens[currentIndex],
    );
  }
}
