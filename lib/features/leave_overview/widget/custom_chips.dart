import 'package:flutter/material.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class CustomChips extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;
  final Color selectedColor;
  final Color unselectedColor;

  const CustomChips({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
    required this.selectedColor,
    required this.unselectedColor,
  });

  @override
  Widget build(BuildContext context) {
    final Color borderColor = selected ? selectedColor : unselectedColor;
    final Color textColor = selected ? selectedColor : unselectedColor;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: mq.width * .02),
        padding: EdgeInsets.symmetric(
          vertical: mq.height * .015,
          horizontal: mq.width * .032,
        ),
        decoration: BoxDecoration(
          color: borderColor.withAlpha(17),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: borderColor),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
