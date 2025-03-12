import 'package:flutter/material.dart';

class AchievmentWidget extends StatelessWidget {
  const AchievmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> achievements = [
      {"icon": "medal", "count": "11"},
      {"icon": "shield", "count": "7"},
      {"icon": "trophy", "count": "3"},
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: achievements.map((item) {
          return achievementItem(
            icon: getIcon(item["icon"]!),
            count: item["count"]!,
          );
        }).toList(),
      ),
    );
  }

  Widget achievementItem({required IconData icon, required String count}) {
    return Column(
      children: [
        Icon(icon, color: Colors.grey, size: 60),
        const SizedBox(height: 4),
        Text(count, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }

  IconData getIcon(String iconName) {
    switch (iconName) {
      case "medal":
        return Icons.emoji_events;
      case "shield":
        return Icons.shield;
      case "trophy":
        return Icons.emoji_events_outlined;
      default:
        return Icons.help_outline;
    }
  }
}
