import 'package:drink_buddy/modules/calender/views/calender_screen.dart';
import 'package:drink_buddy/modules/home/views/home_screen.dart';
import 'package:drink_buddy/modules/module/view/module_screen.dart';
import 'package:drink_buddy/modules/profile/views/profile_screen.dart';
import 'package:drink_buddy/modules/quickBuddy/views/quick_link_screen.dart';
import 'package:flutter/material.dart';

import 'custom_bottom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    ModuleScreen(),
    QuickLinkScreen(),
    const CustomCalendarScreen(),
    ProfileScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: selectedIndex,
        onItemSelected: onItemTapped,
      ),
    );
  }
}
