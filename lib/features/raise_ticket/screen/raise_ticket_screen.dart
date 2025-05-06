import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/raise_ticket/widgets/big_custom_textfield.dart';
import 'package:interview_task_vasai/features/raise_ticket/widgets/custom_textfield.dart';
import 'package:interview_task_vasai/features/raise_ticket/widgets/textfield_with_dropdown.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class RaiseTicketScreen extends StatefulWidget {
  const RaiseTicketScreen({super.key});

  @override
  State<RaiseTicketScreen> createState() => _RaiseTicketScreenState();
}

class _RaiseTicketScreenState extends State<RaiseTicketScreen> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
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
          child: AppBar(
            title: Text('Raise Ticket'),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.menu_sharp)),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mq.width * 0.05,
            vertical: mq.height * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Select Prority', style: TextStyle(color: lightTxtColor)),
              SizedBox(height: 4),
              TextFieldWithDropdown(
                items: ['High', 'Medium', 'Low'],

                onChanged: (p0) {
                  setState(() {
                    selectedValue = p0;
                  });
                },
              ),

              //
              SizedBox(height: mq.height * 0.02),
              Text('Subject', style: TextStyle(color: lightTxtColor)),
              SizedBox(height: 4),

              CustomTextField(),

              //
              SizedBox(height: mq.height * 0.02),
              Text('Enter Description', style: TextStyle(color: lightTxtColor)),
              SizedBox(height: 4),
              MultiLineTextField(),

              //
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Color(0xff3B82F6),
                  ),
                  child: Text(
                    'Raise Ticket',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
