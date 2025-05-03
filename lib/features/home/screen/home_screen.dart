import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/home/widgets/weekly_calender.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            WeeklyCalender(
              selectedDay: _selectedDay,
              changeDay: (p0) {
                setState(() {
                  _selectedDay = p0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
