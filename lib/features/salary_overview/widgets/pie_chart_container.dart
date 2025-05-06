import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/salary_overview/widgets/pie_chart.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class PieChartContainer extends StatefulWidget {
  const PieChartContainer({super.key});

  @override
  State<PieChartContainer> createState() => _PieChartContainerState();
}

class _PieChartContainerState extends State<PieChartContainer> {
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
      padding: EdgeInsets.symmetric(
        horizontal: mq.width * 0.05,
        vertical: mq.height * 0.02,
      ),
      color: Colors.white,
      child: Column(
        children: [
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Salary Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),

              // Month Dropdown
              Container(
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
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xff3B82F6),
                    ),
                  ),
                ),
              ),
            ],
          ),

          //
          SizedBox(
            height: mq.height * 0.27,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: mq.height * 0.19),
                  child: HalfPieChart(),
                ),
                Positioned(
                  bottom: mq.height * 0.04,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Total Salary',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '35,000',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'BASE',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: pieGreen,
                          ),
                        ),
                        Text(
                          '25,000',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mq.height * 0.08,
                    child: VerticalDivider(color: borderColor, thickness: 2),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'HRA',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: pieBlue,
                          ),
                        ),
                        Text(
                          '2,500',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mq.height * 0.08,
                    child: VerticalDivider(color: borderColor, thickness: 2),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'TA',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: pieOrange,
                          ),
                        ),
                        Text(
                          '2,500',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //
              Divider(),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'OTHER ALLOWANCES',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: pieRed,
                          ),
                        ),
                        Text(
                          '2,500',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: mq.height * 0.08,
                    child: VerticalDivider(color: borderColor, thickness: 2),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'TAX DEDUCTION',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: piePink,
                          ),
                        ),
                        Text(
                          '2,500',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
