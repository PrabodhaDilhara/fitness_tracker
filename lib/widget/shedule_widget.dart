import 'package:fitness_tracker/constant/colors.dart';
import 'package:fitness_tracker/data/shedule_data.dart';
import 'package:fitness_tracker/widget/custom_crd.dart';
import 'package:flutter/material.dart';

class SheduleWidget extends StatelessWidget {
  const SheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final shedualedData = SheduleData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Shedule",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: secondaryColor,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        for (var index = 0; index < shedualedData.sheduletasks.length; index++)
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: CustomCrd(
              color: limecolor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shedualedData.sheduletasks[index].title,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor,
                        ),
                      ),
                      Text(
                        shedualedData.sheduletasks[index].data,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: greyColor,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.alarm,
                    color: greyColor,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
