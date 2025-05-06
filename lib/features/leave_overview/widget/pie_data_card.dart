import 'package:flutter/material.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class PieDataCard extends StatelessWidget {
  const PieDataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(top: mq.height * .04),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'BALANCE',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: pieGreen,
                        ),
                      ),
                      Text(
                        '02',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: mq.height * .06,
                  child: VerticalDivider(color: borderColor, thickness: 2),
                ),

                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'APPROVED',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: pieBlue,
                        ),
                      ),
                      Text(
                        '02',
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

            //
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: mq.width * .01,
                vertical: mq.height * .005,
              ),
              child: Divider(color: borderColor),
            ),

            //
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'PENDING',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: pieOrange,
                        ),
                      ),
                      Text(
                        '02',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: mq.height * .06,
                  child: VerticalDivider(color: borderColor, thickness: 2),
                ),

                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'DENIED',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: pieRed,
                        ),
                      ),
                      Text(
                        '02',
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
          ],
        ),
      ),
    );
  }
}
