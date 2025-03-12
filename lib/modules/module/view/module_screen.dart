import 'package:drink_buddy/modules/module/widget/achievment_widget.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Column(
        children: [
          const SizedBox(height: 40),
          const AchievmentWidget(),
          Expanded(
            child: ListView.builder(
              itemCount: topics.length,
              itemBuilder: (context, index) {
                final item = topics[index];
                return _buildTopicCard(
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

  Widget _buildTopicCard({required String title, required bool isLocked}) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: isLocked ? Colors.grey.shade300 : Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isLocked ? Colors.black54 : Colors.black,
              ),
            ),
            Icon(
              isLocked ? Icons.lock : Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
