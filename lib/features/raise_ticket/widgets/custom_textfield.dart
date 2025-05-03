import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final void Function(String)? onChanged;

  const CustomTextField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      style: TextStyle(fontSize: 14),
      decoration: InputDecoration(
        constraints: BoxConstraints(maxHeight: 40),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
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
