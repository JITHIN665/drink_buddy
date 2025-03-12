import 'package:flutter/material.dart';

class DrinkingChart extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  const DrinkingChart({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          "No drinking data available",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: data.map((entry) {
              return Text(
                entry['cost'],
                style: const TextStyle(color: Colors.white),
              );
            }).toList(),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: data.map((entry) {
              return Column(
                children: [
                  Container(
                    height: entry['amount'] * 10.0,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          const Icon(Icons.local_drink, color: Colors.white),
                          Text(
                            "${entry['amount']}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
