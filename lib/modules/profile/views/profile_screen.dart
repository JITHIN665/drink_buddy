import 'package:drink_buddy/modules/profile/widgets/info_card.dart';
import 'package:drink_buddy/modules/profile/widgets/profile_header.dart';
import 'package:drink_buddy/themes/app_theme.dart';
import 'package:drink_buddy/themes/app_transition.dart';
import 'package:drink_buddy/themes/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final List<Map<String, String>> userDetails = [
    {"icon": "flag", "title": "My Primary Goal", "value": "Save Money"},
    {"icon": "refresh", "title": "My Current Plan", "value": "Keep track of drinks"},
    {"icon": "local_bar", "title": "My Usual Drink", "value": "Beer, Medium"},
    {"icon": "local_bar", "title": "My Regular Drink Counts", "value": "8 drinks"},
    {"icon": "calendar_today", "title": "My Drinking Pattern", "value": "Weekly"},
    {"icon": "phone", "title": "My Emergency Contact", "value": "George Smith"},
  ];

  ProfileScreen({super.key});

  static Route route() {
    return AppFadeTransition(page: ProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor(context).primaryBlueLight,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ProfileHeader(
              name: "Johnathan Smith",
              email: "John1992@domain.com",
              onSettingsPressed: () {},
            ),
            Expanded(
              child: ListView.builder(
                itemCount: userDetails.length,
                itemBuilder: (context, index) {
                  final item = userDetails[index];
                  return InfoCard(
                    icon: item["icon"]!,
                    title: item["title"]!,
                    value: item["value"]!,
                    onEditPressed: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
