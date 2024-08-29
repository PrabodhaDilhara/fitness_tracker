import 'package:fitness_tracker/widget/activity_widget.dart';
import 'package:fitness_tracker/widget/bar_graph_card.dart';
import 'package:fitness_tracker/widget/header_widget.dart';
import 'package:fitness_tracker/widget/line_chart_card.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            HeaderWidget(),
            SizedBox(
              height: 15,
            ),
            ActivityWidget(),
            SizedBox(
              height: 15,
            ),
            LineChartCard(),
            SizedBox(
              height: 15,
            ),
            BarGraphCard(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
