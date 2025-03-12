import 'package:flutter/material.dart';

class QuickLinksList extends StatelessWidget {
  final List<Map<String, String>> quickLinks;
  final Function(String title) onItemTap;

  const QuickLinksList({
    super.key,
    required this.quickLinks,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: quickLinks.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.grey.shade300),
            ),
            elevation: 0,
            child: ListTile(
              leading: const Icon(Icons.mail_outline, color: Colors.black54),
              title: Text(
                item["title"]!,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black54),
              onTap: () => onItemTap(item["title"]!),
            ),
          ),
        );
      }).toList(),
    );
  }
}
