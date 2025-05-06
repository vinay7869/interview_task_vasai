import 'package:flutter/material.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class CustomTabs extends StatelessWidget {
  final String title;
  final String image;
  final Color bgColor;
  final Color borderColor;
  final Color imgColor;
  final Color textColor;
  final void Function() onTap;

  const CustomTabs({
    super.key,
    required this.title,
    required this.image,
    required this.onTap,
    required this.bgColor,
    required this.borderColor,
    required this.imgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: mq.width * 0.01),
        padding: EdgeInsets.symmetric(
          vertical: mq.height * 0.005,
          horizontal: mq.width * 0.04,
        ),
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              image,
              height: mq.height * .04,
              width: mq.width * .06,
              color: imgColor,
            ),
            SizedBox(width: mq.width * 0.02),
            Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
