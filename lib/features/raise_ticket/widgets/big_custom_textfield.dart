import 'package:flutter/material.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class MultiLineTextField extends StatelessWidget {
  const MultiLineTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 7,
      style: TextStyle(fontSize: 14),
      decoration: InputDecoration(
        hintText: 'Placeholder',
        hintStyle: TextStyle(color: lightTxtColor.withAlpha(107)),
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff31415B), width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff31415B), width: 1.8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff31415B)),
        ),
      ),
    );
  }
}
