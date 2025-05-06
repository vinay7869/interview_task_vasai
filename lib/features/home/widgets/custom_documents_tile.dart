import 'package:flutter/material.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class CustomDocumentsTile extends StatelessWidget {
  final String title, subtitle;
  final bool isLast;

  const CustomDocumentsTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: mq.height * 0.008,
            horizontal: mq.width * 0.05,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: mq.width * .1,
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(top: 4),
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  '$iconPath/folder_icon.png',
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Image.asset(
                          '$iconPath/holiday.png',
                          height: mq.height * .02,
                          width: mq.width * .045,
                        ),
                        SizedBox(width: 7),
                        Text(
                          subtitle,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: lightTxtColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 3, top: 4),
                  child: Icon(Icons.more_vert),
                ),
              ),
            ],
          ),
        ),
        if (!isLast)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
            child: Divider(color: borderColor, thickness: 0.5),
          ),
      ],
    );
  }
}
