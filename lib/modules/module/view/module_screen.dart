import 'package:drink_buddy/modules/module/widget/achievment_widget.dart';
import 'package:drink_buddy/modules/module/widget/topic_card.dart';
import 'package:drink_buddy/themes/app_theme.dart';
import 'package:drink_buddy/themes/app_transition.dart';
import 'package:drink_buddy/themes/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ModuleScreen extends StatelessWidget {
  final List<Map<String, dynamic>> topics = [
    {"title": "Beat Cravings", "isLocked": false},
    {"title": "Practise Imagery", "isLocked": false},
    {"title": "Saying NO", "isLocked": false},
    {"title": "Mindfulness", "isLocked": false},
    {"title": "Guilt and Shame", "isLocked": true},
    {"title": "Relationship Issues", "isLocked": true},
  ];

  ModuleScreen({super.key});

  static Route route() {
    return AppFadeTransition(page: ModuleScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor(context).primaryBlueLight,
      body: Column(
        children: [
          const SizedBox(height: 40),
          const AchievmentWidget(),
          Expanded(
            child: ListView.builder(
              itemCount: topics.length,
              itemBuilder: (context, index) {
                final item = topics[index];
                return TopicCard(
                  title: item["title"]!,
                  isLocked: item["isLocked"]!,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 1,
        onItemSelected: (p0) {},
      ),
    );
  }
}
