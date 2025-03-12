import 'package:drink_buddy/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PlanProgressIndicator extends StatelessWidget {
  final double progress;

  const PlanProgressIndicator({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appColor(context).fullWhite,
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade300,
            ),
          ),
          CircularPercentIndicator(
            radius: 50.0,
            lineWidth: 10.0,
            percent: progress,
            center: Text(
              "${(progress * 100).toInt()}%",
              style: const TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            progressColor: Colors.green,
            backgroundColor: Colors.transparent,
            circularStrokeCap: CircularStrokeCap.round,
          ),
        ],
      ),
    );
  }
}
