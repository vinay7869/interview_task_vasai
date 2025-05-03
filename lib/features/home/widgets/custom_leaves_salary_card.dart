import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/home/widgets/custom_text_button.dart';
import 'package:interview_task_vasai/helpers/global.dart';
import 'package:interview_task_vasai/main.dart';

class CustomLeavesSalaryCard extends StatelessWidget {
  final String heading, value, title1, title2, title3, value1, value2, value3;
  final void Function() onTap;
  const CustomLeavesSalaryCard({
    super.key,
    required this.heading,
    required this.value,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.value1,
    required this.value2,
    required this.value3,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: mq.width * 0.05),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 1),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mq.width * 0.04,
                  vertical: mq.height * 0.015,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      heading,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      value,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: mq.width * 0.04),
                child: Divider(color: borderColor),
              ),

              //
              Container(
                height: mq.height * 0.1,
                padding: EdgeInsets.symmetric(
                  horizontal: mq.width * 0.04,
                  vertical: mq.height * 0.02,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title1,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: lightTxtColor,
                            ),
                          ),
                          Text(
                            value1,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: borderColor,
                      thickness: 1,
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title2,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: lightTxtColor,
                            ),
                          ),
                          Text(
                            value2,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: borderColor,
                      thickness: 1,
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            title3,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: lightTxtColor,
                            ),
                          ),
                          Text(
                            value3,
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
            ],
          ),
        ),

        //
        CustomTextButton(title: 'VIEW DETAILS', onTap: onTap),
      ],
    );
  }
}
