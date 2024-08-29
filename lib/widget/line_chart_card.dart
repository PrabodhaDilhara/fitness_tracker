import 'package:fitness_tracker/constant/colors.dart';
import 'package:fitness_tracker/data/line_chart_data.dart';
import 'package:fitness_tracker/widget/custom_crd.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});
  //line chart data

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return CustomCrd(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Steps Overviews",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: greyColor,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        AspectRatio(
          aspectRatio: 16 / 6,
          child: LineChart(
            LineChartData(
              lineTouchData: LineTouchData(
                handleBuiltInTouches: true,
              ),
              titlesData: FlTitlesData(
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                //remove the topside title
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      return data.bottomTitle[value.toInt()] != null
                          ? SideTitleWidget(
                              axisSide: meta.axisSide,
                              child: Text(
                                data.bottomTitle[value.toInt()].toString(),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: greyColor,
                                ),
                              ),
                            )
                          : SizedBox();
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    reservedSize: 40,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      return data.leftTitle[value.toInt()] != null
                          ? Text(
                              data.leftTitle[value.toInt()].toString(),
                              style: TextStyle(
                                fontSize: 12,
                                color: greyColor,
                              ),
                            )
                          : const SizedBox();
                    },
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: false,
              ),
              lineBarsData: [
                LineChartBarData(
                  color: sectionColor,
                  barWidth: 2.5,
                  belowBarData: BarAreaData(
                    gradient: LinearGradient(
                      colors: [
                        sectionColor.withOpacity(0.5),
                        Colors.transparent,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    show: true,
                  ),
                  dotData: FlDotData(
                    show: false,
                  ),
                  spots: data.spots,
                ),
              ],
              minX: 0,
              maxX: 120,
              minY: 0,
              maxY: 100,
            ),
          ),
        )
      ],
    ));
  }
}
