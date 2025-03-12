import 'package:drink_buddy/themes/app_theme.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String icon;
  final String title;
  final String value;
  final VoidCallback onEditPressed;

  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: appColor(context).fullWhite,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: Row(
          children: [
            Icon(getIcon(icon), color: Colors.grey),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                  const SizedBox(height: 4),
                  Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.grey),
              onPressed: onEditPressed,
            ),
          ],
        ),
      ),
    );
  }

  IconData getIcon(String iconName) {
    switch (iconName) {
      case "flag":
        return Icons.flag;
      case "refresh":
        return Icons.refresh;
      case "local_bar":
        return Icons.local_bar;
      case "calendar_today":
        return Icons.calendar_today;
      case "phone":
        return Icons.phone;
      default:
        return Icons.info;
    }
  }
}
