import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/home/screen/home_screen.dart';
import 'package:interview_task_vasai/features/profile/screen/profile_screen.dart';
import 'package:interview_task_vasai/helpers/global.dart';
import 'package:interview_task_vasai/helpers/tabs_app_bar.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _page = 0;

  final List<Widget> _screens = [HomeScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(mq.height * 0.1),
        child: TabsAppBar(),
      ),
      body: _screens[_page],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        child: BottomAppBar(
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                splashColor: Colors.transparent,
                onTap: () => setState(() => _page = 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      '$iconPath/home.png',
                      width: mq.width * .066,
                      color: _page == 0 ? Colors.blue : lightTxtColor,
                    ),
                    SizedBox(height: mq.height * .004),
                    Text(
                      'HOME',
                      style: TextStyle(
                        color: _page == 0 ? Colors.blue : lightTxtColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 58),
              InkWell(
                splashColor: Colors.transparent,
                onTap: () => setState(() => _page = 1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      '$iconPath/profile.png',
                      width: mq.width * .06,
                      color: _page == 1 ? Colors.blue : lightTxtColor,
                    ),
                    SizedBox(height: mq.height * .004),
                    Text(
                      'PROFILE',
                      style: TextStyle(
                        color: _page == 1 ? Colors.blue : lightTxtColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Color(0xffF6F6F8),
        child: Image.asset('assets/images/scan.png', fit: BoxFit.cover),
        onPressed: () {},
      ),
    );
  }
}
