import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/home/widgets/custom_documents_tile.dart';
import 'package:interview_task_vasai/helpers/dotted_divider.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class SalarySlipContainer extends StatelessWidget {
  const SalarySlipContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: mq.height * 0.02),
      color: Colors.white,
      margin: EdgeInsets.only(top: 5),
      child: Column(
        children: [
          //
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mq.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Salary Slips',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),

                Image.asset(
                  '$iconPath/filter_button.png',
                  width: mq.width * .07,
                ),
              ],
            ),
          ),

          //
          Padding(
            padding: EdgeInsets.only(
              top: mq.height * .023,
              bottom: mq.height * .017,
              left: mq.width * 0.05,
              right: mq.width * 0.05,
            ),
            child: DottedHorizontalDivider(dashSpacing: 10, dashWidth: 10),
          ),

          //
          ...List.generate(
            3,
            (index) => CustomDocumentsTile(
              title: 'Salary Slip for the month of August',
              subtitle: '16th May, 2024',
              isLast: index == 2,
            ),
          ),
        ],
      ),
    );
  }
}
