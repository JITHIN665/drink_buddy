import 'package:drink_buddy/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ShowMoreButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ShowMoreButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: appColor(context).fullWhite,
            elevation: 0,
            side: BorderSide(color: Colors.grey.shade300),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          onPressed: onPressed,
          child: const Column(
            children: [
              Icon(Icons.more_horiz, color: Colors.black54),
              Text(
                "Show more options",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
