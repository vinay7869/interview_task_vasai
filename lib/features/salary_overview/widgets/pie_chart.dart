import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class HalfPieChart extends StatelessWidget {
  const HalfPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -math.pi / 180,
      child: PieChart(
        PieChartData(
          startDegreeOffset: 180,
          sectionsSpace: 0,
          centerSpaceRadius: 85.0,
          sections: [
            PieChartSectionData(
              value: 10,
              color: Colors.green,
              showTitle: false,
              radius: 42,
            ),
            PieChartSectionData(
              value: 10,
              color: Colors.yellow,
              showTitle: false,
              radius: 42,
            ),
            PieChartSectionData(
              value: 10,
              color: Colors.red,
              showTitle: false,
              radius: 42,
            ),
            PieChartSectionData(
              value: 30,
              color: Colors.transparent,
              showTitle: false,
              radius: 42,
            ),
          ],
        ),
      ),
    );
  }
}
