import 'package:drink_buddy/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': Icons.home, 'label': "Home"},
      {'icon': Icons.folder, 'label': "Modules"},
      {'icon': Icons.chat, 'label': "Drink Buddy"},
      {'icon': Icons.calendar_today, 'label': "Calendar"},
      {'icon': Icons.person_pin, 'label': "Profile"},
    ];

    return Container(
      decoration: BoxDecoration(
        color: appColor(context).fullWhite,
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 5)],
      ),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final item = items[index];
          final isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () => onItemSelected(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Icon(
                      item['icon'] as IconData,
                      color: isSelected ? Colors.green : Colors.blue,
                      size: 30,
                    ),
                    if (item['label'] == "Drink Buddy")
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  item['label'] as String,
                  style: TextStyle(
                    color: isSelected ? Colors.green : Colors.blue,
                    fontSize: 12,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
