import 'package:drink_buddy/modules/home/widgets/button_grid.dart';
import 'package:drink_buddy/modules/home/widgets/counter_section.dart';
import 'package:drink_buddy/modules/home/widgets/drinking_chart.dart';
import 'package:drink_buddy/modules/home/widgets/plan_progress_indicator.dart';
import 'package:drink_buddy/themes/widgets/custom_bottom_navigation_bar.dart';
import 'package:drink_buddy/themes/widgets/split_background.dart';
import 'package:flutter/material.dart';

List<Map<String, Object>> data = [
  {'amount': 10, 'cost': '\$100'},
  {'amount': 7, 'cost': '\$70'},
  {'amount': 9, 'cost': '\$90'},
  {'amount': 5, 'cost': '\$50'},
  {'amount': 6, 'cost': '\$60'},
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          const SplitBackground(),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PlanProgressIndicator(progress: 0.87),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Plan Progress", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20)),
                        SizedBox(height: 8),
                        Text("Drink less, Save Money", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 14)),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.white),
                  ],
                ),
                const SizedBox(height: 20),
                DrinkingChart(data: data),
                const SizedBox(height: 10),
                const Text("Last 5 Drinking and Spending Patterns", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 14)),
              ],
            ),
          ),
          Positioned(
            top: screenHeight * 0.55 - 40,
            left: 15,
            right: 15,
            child: CounterSection(
              count: 10,
              onAddPressed: () {},
              onSettingsPressed: () {},
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.1 - 70,
            left: 0,
            right: 0,
            child: const ButtonGrid(),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0,
        onItemSelected: (p0) {},
      ),
    );
  }
}
