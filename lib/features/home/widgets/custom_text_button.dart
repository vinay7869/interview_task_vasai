import 'package:flutter/material.dart';
import 'package:interview_task_vasai/main.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const CustomTextButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: mq.width * 0.05, top: mq.height * 0.02),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.arrow_forward_ios,
              size: mq.height * 0.017,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
