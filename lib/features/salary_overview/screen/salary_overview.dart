import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/salary_overview/widgets/pie_chart.dart';

class SalaryOverview extends StatelessWidget {
  const SalaryOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(53, 118, 230, 1),
                Color.fromRGBO(79, 129, 215, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AppBar(title: const Text('Salary Overview')),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 70),
            child: SizedBox(height: 100, child: HalfPieChart()),
          ),
        ],
      ),
    );
  }
}
