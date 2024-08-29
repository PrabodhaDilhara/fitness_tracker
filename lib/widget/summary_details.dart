import 'package:fitness_tracker/constant/colors.dart';
import 'package:fitness_tracker/widget/custom_crd.dart';
import 'package:flutter/material.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCrd(
      color: limecolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetails("Cal", "305"),
          buildDetails("Step", "10342"),
          buildDetails("Distance", "8km"),
          buildDetails("Sleep", "7h"),
        ],
      ),
    );
  }

  Widget buildDetails(String key, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          key,
          style: TextStyle(
            fontSize: 11,
            color: secondaryColor,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 10,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
