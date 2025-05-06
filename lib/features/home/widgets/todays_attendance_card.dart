import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/home/widgets/custom_text_button.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class TodaysAttendanceCard extends StatelessWidget {
  const TodaysAttendanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      color: Colors.white,
      child: Column(
        children: [
          //
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: mq.height * 0.02,
                horizontal: mq.width * 0.04,
              ),
              child: const Text(
                'Today’s Attendance',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ),
          //
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: borderColor, width: 1),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: mq.height * 0.015,
                    horizontal: mq.width * 0.04,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Check In'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: lightTxtColor,
                            ),
                          ),
                          Text(
                            '10:00 AM',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 40,
                        child: VerticalDivider(
                          color: borderColor,
                          thickness: 1,
                        ),
                      ),

                      Column(
                        children: [
                          Text(
                            'Check Out'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: lightTxtColor,
                            ),
                          ),
                          Text(
                            '7:00 PM',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Divider(color: borderColor, thickness: 0.7),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: mq.height * 0.015,
                    horizontal: mq.width * 0.04,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Duration',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '8:30 Hours',
                        style: TextStyle(
                          fontSize: 22,
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
          CustomTextButton(title: 'GET DETAILED ANALYSIS', onTap: () {}),
          SizedBox(height: mq.height * .025),
        ],
      ),
    );
  }
}
