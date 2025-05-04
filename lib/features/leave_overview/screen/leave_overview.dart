import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/leave_overview/widget/leave_pie_chart.dart';
import 'package:interview_task_vasai/main.dart';

class LeaveOverview extends StatefulWidget {
  const LeaveOverview({super.key});

  @override
  State<LeaveOverview> createState() => _LeaveOverviewState();
}

class _LeaveOverviewState extends State<LeaveOverview> {
  String selectedMonth = 'September';
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

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
          child: AppBar(title: const Text('Leave Overview')),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: mq.width * 0.05,
                vertical: mq.height * 0.02,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Monthly Summary',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      // Month Dropdown
                      Container(
                        height: mq.height * 0.04,
                        width: mq.width * 0.335,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff3B82F6)),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            isDense: true,
                            value: selectedMonth,
                            items:
                                months
                                    .map(
                                      (month) => DropdownMenuItem<String>(
                                        value: month,
                                        child: Text(
                                          month,
                                          style: const TextStyle(
                                            color: Color(0xff3B82F6),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedMonth = value!;
                              });
                            },
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xff3B82F6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    color: Colors.white,
                    height: mq.height * .2,
                    padding: EdgeInsets.only(top: mq.height * .22),
                    child: LeavePieChart(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
