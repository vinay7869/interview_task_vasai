import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/leave_overview/widget/custom_chips.dart';
import 'package:interview_task_vasai/helpers/dotted_divider.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  final List<String> statusFilters = ['Approved', 'Pending', 'Rejected'];
  final Set<String> selectedStatusFilters = {};

  void toggleFilter(String filter) {
    setState(() {
      if (selectedStatusFilters.contains(filter)) {
        selectedStatusFilters.remove(filter);
      } else {
        selectedStatusFilters.add(filter);
      }
    });
  }

  final List<String> leaveTypefilters = ['Casual Leave', 'Sick Leave', 'Other'];
  final Set<String> selectedLeaveTypefilters = {};

  void toggleFilter2(String filter) {
    setState(() {
      if (selectedLeaveTypefilters.contains(filter)) {
        selectedLeaveTypefilters.remove(filter);
      } else {
        selectedLeaveTypefilters.add(filter);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      width: double.maxFinite,
      height: mq.height * .52,
      padding: EdgeInsets.only(bottom: mq.height * .02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            child: Container(
              width: mq.width * .11,
              height: 5,
              margin: const EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                color: Color(0xffE0E0E0),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          //
          Padding(
            padding: EdgeInsets.only(
              top: mq.height * .03,
              left: mq.width * .03,
            ),
            child: Text(
              'Filter',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),

          //
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mq.width * .05,
              vertical: mq.height * .02,
            ),
            child: DottedHorizontalDivider(dashSpacing: 10, dashWidth: 10),
          ),

          //
          Padding(
            padding: EdgeInsets.only(
              top: mq.height * .01,
              left: mq.width * .04,
            ),
            child: Text(
              'STATUS',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),

          //
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mq.width * .04,
              vertical: mq.height * .02,
            ),
            child: Row(
              children:
                  statusFilters.map((filter) {
                    final isSelected = selectedStatusFilters.contains(filter);
                    return CustomChips(
                      title: filter,
                      selected: isSelected,
                      selectedColor: Colors.blue,
                      unselectedColor: Colors.grey,
                      onTap: () => toggleFilter(filter),
                    );
                  }).toList(),
            ),
          ),

          //
          Padding(
            padding: EdgeInsets.only(
              top: mq.height * .01,
              left: mq.width * .04,
            ),
            child: Text(
              'LEAVE TYPE',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),

          //
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mq.width * .04,
              vertical: mq.height * .02,
            ),
            child: Row(
              children:
                  leaveTypefilters.map((filter) {
                    final isSelected = selectedLeaveTypefilters.contains(
                      filter,
                    );
                    return CustomChips(
                      title: filter,
                      selected: isSelected,
                      selectedColor: Colors.blue,
                      unselectedColor: Colors.grey,
                      onTap: () => toggleFilter2(filter),
                    );
                  }).toList(),
            ),
          ),

          //
          Padding(
            padding: EdgeInsets.only(top: mq.height * .01),
            child: Divider(color: borderColor),
          ),

          //
          Padding(
            padding: EdgeInsets.symmetric(horizontal: mq.width * .04),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedStatusFilters.clear();
                        selectedLeaveTypefilters.clear();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        side: BorderSide(color: Color(0xffEB4631)),
                      ),
                    ),
                    child: Text(
                      'Reset',
                      style: TextStyle(color: Color(0xffEB4631)),
                    ),
                  ),
                ),
                //
                SizedBox(width: mq.width * .04),
                //
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff3B82F6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        side: BorderSide(color: Color(0xff3B82F6)),
                      ),
                    ),
                    child: Text('Apply', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
