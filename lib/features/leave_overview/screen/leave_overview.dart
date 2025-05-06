import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/leave_overview/widget/custom_bottom_sheet.dart';
import 'package:interview_task_vasai/features/leave_overview/widget/leave_pie_chart.dart';
import 'package:interview_task_vasai/features/leave_overview/widget/leave_status_card.dart';
import 'package:interview_task_vasai/features/leave_overview/widget/month_selecter.dart';
import 'package:interview_task_vasai/features/leave_overview/widget/pie_data_card.dart';
import 'package:interview_task_vasai/helpers/dotted_divider.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class LeaveOverview extends StatefulWidget {
  const LeaveOverview({super.key});

  @override
  State<LeaveOverview> createState() => _LeaveOverviewState();
}

class _LeaveOverviewState extends State<LeaveOverview> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
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
        physics: BouncingScrollPhysics(),
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
                      MonthSelecter(),
                    ],
                  ),

                  //  pie circle
                  Container(
                    color: Colors.white,
                    height: mq.height * .2,
                    padding: EdgeInsets.only(top: mq.height * .22),
                    child: LeavePieChart(),
                  ),

                  //
                  PieDataCard(),
                ],
              ),
            ),

            //
            Container(
              margin: EdgeInsets.only(top: 5),
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: mq.width * 0.05),
              child: Column(
                children: [
                  //
                  Padding(
                    padding: EdgeInsets.only(top: mq.height * .02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Leaves',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return CustomBottomSheet();
                              },
                            );
                          },
                          child: Image.asset(
                            '$iconPath/filter_icon.png',
                            width: mq.width * .07,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: mq.width * .01,
                      vertical: mq.height * .025,
                    ),
                    child: DottedHorizontalDivider(
                      dashSpacing: 10,
                      dashWidth: 10,
                    ),
                  ),

                  //
                  ...List.generate(3, (index) => LeaveStatusCard()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
