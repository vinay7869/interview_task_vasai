import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/home/widgets/custom_holiday_tile.dart';
import 'package:interview_task_vasai/helpers/dotted_divider.dart';
import 'package:interview_task_vasai/main.dart';

class HolidayScreen extends StatefulWidget {
  const HolidayScreen({super.key});

  @override
  State<HolidayScreen> createState() => _HolidayScreenState();
}

class _HolidayScreenState extends State<HolidayScreen> {
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
          child: AppBar(title: Text('Holiday List')),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(bottom: mq.height * 0.035),
        child: Column(
          children: [
            //
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: mq.width * 0.05,
                        vertical: mq.height * 0.015,
                      ),
                      child: Text(
                        'January 2024',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: mq.width * 0.05),
                    child: DottedHorizontalDivider(
                      dashSpacing: 10,
                      dashWidth: 10,
                    ),
                  ),
                  //
                  SizedBox(height: 10),
                  ...List.generate(4, (index) {
                    return CustomHolidayTile(
                      title: 'New Year',
                      subtitle: '01st jan, 2024 - Saturday',
                      isLast: index == 3,
                    );
                  }),
                  SizedBox(height: 10),
                ],
              ),
            ),

            //
            Container(
              margin: EdgeInsets.only(top: 7),
              color: Colors.white,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: mq.width * 0.05,
                        vertical: mq.height * 0.015,
                      ),
                      child: Text(
                        'February 2024',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: mq.width * 0.05),
                    child: DottedHorizontalDivider(
                      dashSpacing: 10,
                      dashWidth: 10,
                    ),
                  ),
                  //
                  SizedBox(height: 10),
                  ...List.generate(4, (index) {
                    return CustomHolidayTile(
                      title: 'New Year',
                      subtitle: '01st jan, 2024 - Saturday',
                      isLast: index == 3,
                    );
                  }),

                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
