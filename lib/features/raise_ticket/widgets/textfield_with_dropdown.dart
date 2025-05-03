import 'package:flutter/material.dart';

class TextFieldWithDropdown extends StatefulWidget {
  final List<String> items;
  final void Function(String)? onChanged;

  const TextFieldWithDropdown({super.key, required this.items, this.onChanged});

  @override
  State<TextFieldWithDropdown> createState() => _TextFieldWithDropdownState();
}

class _TextFieldWithDropdownState extends State<TextFieldWithDropdown> {
  final TextEditingController _controller = TextEditingController();
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = 'High';
    _controller.text = selectedValue!;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isDense: true,
      value: selectedValue,
      onChanged: (value) {
        setState(() {
          selectedValue = value;
          _controller.text = value!;
        });
        if (widget.onChanged != null) widget.onChanged!(value!);
      },
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
      items:
          widget.items
              .map(
                (item) =>
                    DropdownMenuItem<String>(value: item, child: Text(item)),
              )
              .toList(),
    );
  }
}
