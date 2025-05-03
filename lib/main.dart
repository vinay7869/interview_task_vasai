import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/tabs_screen.dart';

void main() {
  runApp(const MainApp());
}

late Size mq;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'DM Sans',
        scaffoldBackgroundColor: Color(0xffF6F6F8),
      ),
      home: TabsScreen(),
    );
  }
}
