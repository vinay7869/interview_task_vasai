import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/tabs_screen.dart';
import 'package:interview_task_vasai/helpers/global.dart';

void main() {
  runApp(const MainApp());
}



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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.only(
          //     bottomLeft: Radius.circular(20),
          //     bottomRight: Radius.circular(20),
          //   ),
          // ),
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      home: TabsScreen(),
    );
  }
}
