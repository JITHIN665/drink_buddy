import 'package:drink_buddy/themes/app_theme.dart';
import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {
  final String title;
  final bool isLocked;
  final VoidCallback? onTap;

  const TopicCard({
    super.key,
    required this.title,
    required this.isLocked,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: isLocked ? Colors.grey.shade300 : appColor(context).fullWhite,
      child: InkWell(
        onTap: isLocked ? null : onTap,
        borderRadius: BorderRadius.circular(12),
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
      ),
    );
  }
}
