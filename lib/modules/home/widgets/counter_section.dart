import 'package:drink_buddy/infrastructure/Home/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:drink_buddy/themes/app_theme.dart';

class CounterSection extends StatelessWidget {
  const CounterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, counterProvider, child) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: appColor(context).fullWhite,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.local_drink, color: Colors.blue, size: 30),
              Text(
                "${counterProvider.count}",
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: const Icon(Icons.add, size: 28),
                onPressed: counterProvider.increment,
              ),
              Container(
                height: 40,
                width: 2,
                color: Colors.grey.shade300,
              ),
              IconButton(
                icon: const Icon(Icons.tune, color: Colors.black, size: 28),
                onPressed: () {
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
