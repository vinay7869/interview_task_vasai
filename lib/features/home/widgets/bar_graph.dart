import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/home/widgets/custom_text_button.dart';
import 'package:interview_task_vasai/features/leave_overview/screen/leave_overview.dart';
import 'package:interview_task_vasai/helpers/dotted_divider.dart';
import 'package:interview_task_vasai/helpers/global.dart';
import 'package:interview_task_vasai/main.dart';

class CustomBarGraph extends StatelessWidget {
  const CustomBarGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // bar graph
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mq.width * 0.05,
            vertical: mq.height * 0.008,
          ),
          child: AspectRatio(
            aspectRatio: 1.7,
            child: BarChart(
              BarChartData(
                extraLinesData: ExtraLinesData(
                  horizontalLines: [
                    HorizontalLine(y: 0, color: borderColor, strokeWidth: 1),
                    HorizontalLine(y: 30, color: borderColor, strokeWidth: 1),
                  ],
                ),

                alignment: BarChartAlignment.spaceAround,
                maxY: 30,
                barTouchData: BarTouchData(enabled: false),
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 10,
                  drawHorizontalLine: true,
                  getDrawingHorizontalLine:
                      (value) => FlLine(color: borderColor, strokeWidth: 1),
                ),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 28,
                      interval: 10,
                      getTitlesWidget:
                          (value, _) => Text(
                            value == 0 ? '00' : value.toInt().toString(),
                            style: TextStyle(fontSize: 10),
                          ),
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, _) {
                        const labels = ['WORKING DAYS', 'SUNDAYS', 'HOLIDAYS'];
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            labels[value.toInt()],
                            style: TextStyle(fontSize: 10),
                          ),
                        );
                      },
                    ),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(show: false),
                barGroups: [
                  BarChartGroupData(
                    x: 0,
                    barRods: [
                      BarChartRodData(
                        toY: 27,
                        width: 35,
                        borderRadius: BorderRadius.zero,
                        gradient: LinearGradient(
                          colors: [Color(0xff4A9D93), Color(0xffB5D7D3)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 1,
                    barRods: [
                      BarChartRodData(
                        toY: 8,
                        width: 35,
                        borderRadius: BorderRadius.zero,
                        gradient: LinearGradient(
                          colors: [Color(0xffF97E6E), Color(0xffFCCAC2)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 2,
                    barRods: [
                      BarChartRodData(
                        toY: 3,
                        width: 35,
                        borderRadius: BorderRadius.zero,
                        gradient: LinearGradient(
                          colors: [Color(0xffF7B06F), Color(0xffFBD4B0)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mq.width * .05,
            vertical: mq.height * .025,
          ),
          child: DottedHorizontalDivider(dashSpacing: 10, dashWidth: 10),
        ),

        //
        Padding(
          padding: EdgeInsets.symmetric(horizontal: mq.width * 0.05),
          child: Row(
            children: [
              // Column 1
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'WORKING DAYS',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff4A9D93),
                      ),
                    ),
                    Text(
                      '24',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),

              // Divider
              SizedBox(
                width: 1,
                height: mq.height * 0.05,
                child: VerticalDivider(color: borderColor, thickness: 1),
              ),

              // Column 2
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'SUNDAYS',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffF97E6E),
                      ),
                    ),
                    Text(
                      '24',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),

              // Divider
              SizedBox(
                width: 1,
                height: mq.height * 0.05,
                child: VerticalDivider(color: borderColor, thickness: 1),
              ),

              // Column 3
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'HOLIDAYS',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffF97E6E),
                      ),
                    ),
                    Text(
                      '24',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        //
        Padding(
          padding: EdgeInsets.only(
            top: mq.height * 0.01,
            bottom: mq.height * 0.02,
          ),
          child: CustomTextButton(
            title: 'VIEW DETAILS',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LeaveOverview()),
              );
            },
          ),
        ),
      ],
    );
  }
}
