import 'package:flutter/material.dart';

class CounterSection extends StatelessWidget {
  final int count;
  final VoidCallback onAddPressed;
  final VoidCallback onSettingsPressed;

  const CounterSection({
    super.key,
    required this.count,
    required this.onAddPressed,
    required this.onSettingsPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.local_drink, color: Colors.blue, size: 30),
          Text(
            "$count",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: const Icon(Icons.add, size: 28),
            onPressed: onAddPressed,
          ),
          Container(
            height: 40,
            width: 2,
            color: Colors.grey.shade300,
          ),
          IconButton(
            icon: const Icon(Icons.tune, color: Colors.black, size: 28),
            onPressed: onSettingsPressed,
          ),
        ],
      ),
    );
  }
}
