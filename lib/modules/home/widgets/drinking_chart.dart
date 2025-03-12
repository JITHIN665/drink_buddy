import 'package:drink_buddy/themes/app_theme.dart';
import 'package:flutter/material.dart';

class DrinkingChart extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  const DrinkingChart({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          "No drinking data available",
          style: TextStyle(color: appColor(context).fullWhite, fontSize: 16),
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
                style: TextStyle(color: appColor(context).fullWhite),
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
                      color: const Color(0xFF2196F3),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Icon(Icons.local_drink, color: appColor(context).fullWhite),
                          Text(
                            "${entry['amount']}",
                            style: TextStyle(color: appColor(context).fullWhite),
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
