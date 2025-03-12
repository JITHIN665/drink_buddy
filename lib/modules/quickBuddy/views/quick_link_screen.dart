import 'package:drink_buddy/modules/quickBuddy/widgets/quick_link_widget.dart';
import 'package:drink_buddy/modules/quickBuddy/widgets/show_more_button.dart';
import 'package:drink_buddy/modules/quickBuddy/widgets/welcome_message.dart';
import 'package:drink_buddy/themes/app_theme.dart';
import 'package:drink_buddy/themes/app_transition.dart';
import 'package:drink_buddy/themes/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class QuickLinkScreen extends StatelessWidget {
  final List<Map<String, String>> quickLinks = [
    {"title": "My Dashboard"},
    {"title": "My Training Modules"},
    {"title": "My Profile"},
  ];

  QuickLinkScreen({super.key});

  static Route route() {
    return AppFadeTransition(page: QuickLinkScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor(context).primaryBlueLight,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(),
            ),
            const WelcomeMessage(
              message: "Hey there, Welcome back! \nPlease find useful quick links below.",
            ),
            const SizedBox(height: 10),
            QuickLinksList(
              quickLinks: quickLinks,
              onItemTap: (title) {},
            ),
            const SizedBox(height: 10),
            ShowMoreButton(
              onPressed: () {},
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 2,
        onItemSelected: (p0) {},
      ),
    );
  }
}
