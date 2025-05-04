import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/documents/screen/documents_screen.dart';
import 'package:interview_task_vasai/features/holidays/screen/holiday_screen.dart';
import 'package:interview_task_vasai/features/home/widgets/actions_card.dart';
import 'package:interview_task_vasai/features/home/widgets/custom_documents_tile.dart';
import 'package:interview_task_vasai/features/home/widgets/custom_holiday_tile.dart';
import 'package:interview_task_vasai/features/home/widgets/custom_leaves_salary_card.dart';
import 'package:interview_task_vasai/features/home/widgets/custom_tabs.dart';
import 'package:interview_task_vasai/features/home/widgets/custom_text_button.dart';
import 'package:interview_task_vasai/features/home/widgets/graph_card.dart';
import 'package:interview_task_vasai/features/home/widgets/todays_attendance_card.dart';
import 'package:interview_task_vasai/features/home/widgets/weekly_calender.dart';
import 'package:interview_task_vasai/features/salary_overview/screen/salary_overview.dart';
import 'package:interview_task_vasai/helpers/dotted_divider.dart';
import 'package:interview_task_vasai/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  DateTime _selectedDay = DateTime.now();

  List<String> tabs = ['Leaves', 'Salary', 'Holiday', 'Documents'];

  late TabController _tabController;

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.animation!.addListener(() {
      final newIndex = _tabController.animation!.value.round();
      if (newIndex != _currentIndex) {
        setState(() {
          _currentIndex = newIndex;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(bottom: mq.height * 0.035),
          child: Column(
            children: [
              // Weekly Calender
              WeeklyCalender(
                selectedDay: _selectedDay,
                changeDay: (p0) {
                  setState(() {
                    _selectedDay = p0;
                  });
                },
              ),

              // Tab Bar
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: mq.height * 0.02,
                          horizontal: mq.width * 0.04,
                        ),
                        child: const Text(
                          'Overview',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: mq.width * 0.03,
                        ),
                        child: Row(
                          children: List.generate(
                            tabs.length,
                            (index) => CustomTabs(
                              title: tabs[index],
                              image:
                                  'assets/icons/${tabs[index].toLowerCase()}.png',
                              imgColor:
                                  _currentIndex == index
                                      ? Colors.blue
                                      : Colors.grey,
                              textColor:
                                  _currentIndex == index
                                      ? Colors.blue
                                      : Colors.grey,
                              onTap: () {
                                setState(() {
                                  _tabController.animateTo(index);
                                  _currentIndex = index;
                                });
                              },
                              bgColor:
                                  _currentIndex == index
                                      ? Colors.blue.withAlpha(17)
                                      : Colors.white,
                              borderColor:
                                  _currentIndex == index
                                      ? Colors.blue
                                      : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: mq.width * .05,
                        vertical: mq.height * .025,
                      ),
                      child: DottedHorizontalDivider(
                        dashSpacing: 10,
                        dashWidth: 10,
                      ),
                    ),

                    //
                    SizedBox(
                      height:
                          _currentIndex == 0 || _currentIndex == 1
                              ? mq.height * 0.26
                              : mq.height * 0.33,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          CustomLeavesSalaryCard(
                            heading: 'Balance',
                            value: '24',
                            title1: 'APPROVED',
                            title2: 'PENDING',
                            title3: 'DENIED',
                            value1: '02',
                            value2: '02',
                            value3: '02',
                            onTap: () {},
                          ),
                          CustomLeavesSalaryCard(
                            heading: 'Total Salary',
                            value: '37,000',
                            title1: 'BASE',
                            title2: 'HRA',
                            title3: 'TAX',
                            value1: '35,000',
                            value2: '0.00',
                            value3: '0.00',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SalaryOverview(),
                                ),
                              );
                            },
                          ),
                          Column(
                            children: [
                              //
                              ListView(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                children: List.generate(
                                  3,
                                  (index) => CustomHolidayTile(
                                    title: 'New Year',
                                    subtitle: '01st jan, 2024 - Saturday',
                                    isLast: index == 2,
                                  ),
                                ),
                              ),

                              //
                              CustomTextButton(
                                title: 'VIEW ALL',
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => const HolidayScreen(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              //
                              ListView(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                children: List.generate(
                                  3,
                                  (index) => CustomDocumentsTile(
                                    title: 'Resume.pdf',
                                    subtitle: '16th May, 2024',
                                  ),
                                ),
                              ),

                              //
                              CustomTextButton(
                                title: 'VIEW ALL',
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => const DocumentsScreen(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //
              ActionsCard(),

              //
              TodaysAttendanceCard(),

              //
              GraphCard(),
            ],
          ),
        ),
      ),
    );
  }
}
