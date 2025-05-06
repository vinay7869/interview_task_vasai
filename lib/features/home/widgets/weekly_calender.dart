import 'package:flutter/material.dart';
import 'package:interview_task_vasai/helpers/global.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class WeeklyCalender extends StatelessWidget {
  final DateTime selectedDay;
  final void Function(DateTime) changeDay;
  const WeeklyCalender({
    super.key,
    required this.selectedDay,
    required this.changeDay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: mq.height * 0.02,
        horizontal: mq.width * 0.05,
      ),
      child: WeeklyDatePicker(
        backgroundColor: Colors.white,
        enableWeeknumberText: false,
        selectedDigitBackgroundColor: Colors.blue,
        selectedDay: selectedDay,
        changeDay: changeDay,
      ),
    );
  }
}
