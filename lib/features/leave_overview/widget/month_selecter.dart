import 'package:flutter/material.dart';

class MonthSelecter extends StatefulWidget {
  const MonthSelecter({super.key});

  @override
  State<MonthSelecter> createState() => _MonthSelecterState();
}

class _MonthSelecterState extends State<MonthSelecter> {
  String selectedMonth = 'September';
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      height: mq.height * 0.04,
      width: mq.width * 0.335,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff3B82F6)),
        borderRadius: BorderRadius.circular(6),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          isDense: true,
          value: selectedMonth,
          items:
              months
                  .map(
                    (month) => DropdownMenuItem<String>(
                      value: month,
                      child: Text(
                        month,
                        style: const TextStyle(
                          color: Color(0xff3B82F6),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                  .toList(),
          onChanged: (value) {
            setState(() {
              selectedMonth = value!;
            });
          },
          icon: const Icon(Icons.arrow_drop_down, color: Color(0xff3B82F6)),
        ),
      ),
    );
  }
}
