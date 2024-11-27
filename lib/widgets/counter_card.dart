import 'package:flutter/material.dart';
import 'package:stacked_counterapp/constants/app_colors.dart';

class CounterCard extends StatelessWidget {
  final String countText;
  const CounterCard({super.key, required this.countText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: AppColors.primaryColor,
          width: 2.0,
        ),
      ),
      child: Column(
        children: [
          const Text(
            "Current Counter Value",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: AppColors.primaryColor),
          ),
          const SizedBox(height: 12.0),
          Text(
            countText,
            style: const TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
