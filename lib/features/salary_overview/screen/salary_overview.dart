import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/salary_overview/widgets/pie_chart_container.dart';
import 'package:interview_task_vasai/features/salary_overview/widgets/salary_slip_container.dart';

class SalaryOverview extends StatefulWidget {
  const SalaryOverview({super.key});

  @override
  State<SalaryOverview> createState() => _SalaryOverviewState();
}

class _SalaryOverviewState extends State<SalaryOverview> {
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            // uppper container
            PieChartContainer(),

            //lower container
            SalarySlipContainer(),
          ],
        ),
      ),
    );
  }
}
