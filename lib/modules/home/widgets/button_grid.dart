import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final buttons = [
      {'icon': Icons.flag, 'label': "Add Goal"},
      {'icon': Icons.self_improvement, 'label': "Reflect"},
      {'icon': Icons.self_improvement, 'label': "Reflect"},
      {'icon': Icons.bar_chart, 'label': "My Progress"},
      {'icon': Icons.phone, 'label': "Helpline"},
      {'icon': Icons.sos, 'label': "SOS", 'isSOS': true},
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: buttons.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (context, index) {
          final button = buttons[index];
          return iconButton(
            button['icon'] as IconData,
            button['label'] as String,
            isSOS: button.containsKey('isSOS') ? button['isSOS'] as bool : false,
          );
        },
      ),
    );
  }

  Widget iconButton(IconData icon, String label, {bool isSOS = false}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: isSOS ? const Color(0xFFF44336) : const Color(0xFFBBDEFB),
          child: Icon(icon, size: 30, color: isSOS ? Colors.white : Colors.blue),
        ),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
