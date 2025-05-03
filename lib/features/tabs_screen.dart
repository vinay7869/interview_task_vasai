import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/home/screen/home_screen.dart';
import 'package:interview_task_vasai/features/profile/screen/profile_screen.dart';
import 'package:interview_task_vasai/main.dart';

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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(mq.height * 0.1),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(53, 118, 230, 1),
                Color.fromRGBO(79, 129, 215, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: mq.height * .06,
              left: mq.width * .05,
              right: mq.width * .05,
              bottom: mq.height * .01,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // leading image
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/image 7.png',
                      fit: BoxFit.cover,
                      height: mq.height * .1,
                    ),
                  ),
                ),
                const SizedBox(width: 10),

                // title
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Ethan Reynolds',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      'Lead UI/UX Designer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),

                // notification icon
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/notification.png',
                    fit: BoxFit.cover,
                    height: mq.height * .05,
                  ),
                ),
              ],
            ),
          ),
        ),
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
                    Icon(
                      Icons.home,
                      color: _page == 0 ? Colors.blue : Colors.black,
                    ),
                    SizedBox(height: mq.height * .004),
                    Text(
                      'HOME',
                      style: TextStyle(
                        color: _page == 0 ? Colors.blue : Colors.black,
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
                    Icon(
                      Icons.person_2_outlined,
                      color: _page == 1 ? Colors.blue : Colors.black,
                    ),
                    SizedBox(height: mq.height * .004),
                    Text(
                      'PROFILE',
                      style: TextStyle(
                        color: _page == 1 ? Colors.blue : Colors.black,
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
        child: Image.asset(
          'assets/images/scan.png',
          fit: BoxFit.cover,
          height: 90,
          width: 90,
        ),
        onPressed: () => setState(() => _page = 2),
      ),
    );
  }
}
