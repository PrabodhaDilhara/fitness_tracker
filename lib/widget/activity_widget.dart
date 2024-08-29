import 'package:fitness_tracker/constant/colors.dart';
import 'package:fitness_tracker/data/health_detail.dart';
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fitness_tracker/widget/custom_crd.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final healthModelData = HealthDetail();
    final bool isMobile = Responsive.isMobole(context);
    return GridView.builder(
        itemCount: healthModelData.healthDetail.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isMobile ? 2 : 4,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          return CustomCrd(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  healthModelData.healthDetail[index].icon,
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 4),
                  child: Text(
                    healthModelData.healthDetail[index].value,
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  healthModelData.healthDetail[index].title,
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
