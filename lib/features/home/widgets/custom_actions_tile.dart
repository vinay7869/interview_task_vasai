import 'package:flutter/material.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class CustomActionsTile extends StatelessWidget {
  final String title;
  final Function() onTap;

  const CustomActionsTile({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          contentPadding: EdgeInsets.zero,
          leading: Container(
            margin: EdgeInsets.only(left: mq.width * .05, top: 0),
            width: mq.width * .1,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withAlpha(17),
            ),
            child: Image.asset(
              '$iconPath/leaves.png',
              color: Colors.blue,
              fit: BoxFit.contain,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
              size: mq.height * .02,
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
          child: Divider(color: borderColor, thickness: 0.5),
        ),
      ],
    );
  }
}
