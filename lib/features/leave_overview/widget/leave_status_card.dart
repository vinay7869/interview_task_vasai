import 'package:flutter/material.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class LeaveStatusCard extends StatelessWidget {
  const LeaveStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: mq.height * .017),
      padding: EdgeInsets.symmetric(
        vertical: mq.height * .015,
        horizontal: mq.width * .025,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('$iconPath/holiday.png', width: mq.width * .05),
              Padding(
                padding: EdgeInsets.only(left: mq.width * .025),
                child: Text(
                  '02 Aug. - 03 Aug. 2024',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              //
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: Color(0xff0AAB10),
                ),
                child: Text(
                  'APPROVED',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),

          //
          Padding(
            padding: EdgeInsets.symmetric(vertical: mq.height * .017),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TYPE',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: lightTxtColor,
                        ),
                      ),
                      Text(
                        'Casual',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),

                //
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NO. OF DAYS',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: lightTxtColor,
                        ),
                      ),
                      Text('01', style: TextStyle(fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Acknowledged by'.toUpperCase(),
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: lightTxtColor,
                ),
              ),
              Text('Joe Philip', style: TextStyle(fontWeight: FontWeight.w700)),
            ],
          ),
        ],
      ),
    );
  }
}
