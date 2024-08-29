import 'package:fitness_tracker/constant/colors.dart';
import 'package:fitness_tracker/data/bar_graph.dart';
import 'package:fitness_tracker/models/graph_model.dart';
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fitness_tracker/widget/custom_crd.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bargraphdata = BarGraph();
    final bool isMobile = Responsive.isMobole(context);
    return GridView.builder(
      itemCount: bargraphdata.data.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 15,
        childAspectRatio: 5 / 4,
      ),
      itemBuilder: (context, index) {
        return CustomCrd(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  bargraphdata.data[index].label,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: greyColor,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: BarChart(
                  BarChartData(
                    barGroups: _chartGroups(
                      color: bargraphdata.data[index].color,
                      points: bargraphdata.data[index].graph,
                    ),
                    borderData: FlBorderData(
                      border: Border(),
                    ),
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                        ),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (double value, TitleMeta meta) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                bargraphdata.label[value.toInt()],
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: greyColor,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<BarChartGroupData> _chartGroups({
    required List<GraphModel> points,
    required Color color,
  }) {
    return points
        .map(
          (point) => BarChartGroupData(
            x: point.x.toInt(),
            barRods: [
              BarChartRodData(
                toY: point.y,
                width: 12,
                color: color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ],
          ),
        )
        .toList();
  }
}
