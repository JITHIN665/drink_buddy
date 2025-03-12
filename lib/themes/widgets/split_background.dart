import 'package:flutter/material.dart';

class SplitBackground extends StatelessWidget {
  const SplitBackground({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: screenHeight * 0.55,
            color: Colors.blue.shade900,
          ),
          Container(
            height: screenHeight * 0.55,
            color: Colors.blue.shade100,
          ),
        ],
      ),
    );
  }
}
