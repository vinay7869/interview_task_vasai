import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:interview_task_vasai/helpers/global.dart';

class HalfPieChart extends StatelessWidget {
  const HalfPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -math.pi / 180,

      child: PieChart(
        PieChartData(
          startDegreeOffset: 180,
          sectionsSpace: 4,
          centerSpaceRadius: 110.0,
          sections: [
            PieChartSectionData(
              value: 40,
              color: pieGreen,
              showTitle: false,
              radius: 32,
            ),
            PieChartSectionData(
              value: 7,
              color: pieBlue,
              showTitle: false,
              radius: 32,
            ),
            PieChartSectionData(
              value: 7,
              color: pieOrange,
              showTitle: false,
              radius: 32,
            ),
            PieChartSectionData(
              value: 7,
              color: pieRed,
              showTitle: false,
              radius: 32,
            ),
            PieChartSectionData(
              value: 7,
              color: piePink,
              showTitle: false,
              radius: 32,
            ),

            PieChartSectionData(
              value: 67,
              color: Colors.transparent,
              showTitle: false,
              radius: 32,
            ),
          ],
        ),
      ),
    );
  }
}
