import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/home/widgets/custom_actions_tile.dart';
import 'package:interview_task_vasai/features/raise_ticket/screen/raise_ticket_screen.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 5),
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
                'Actions',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ),

          //
          CustomActionsTile(title: 'Apply Leave', onTap: () {}),
          CustomActionsTile(
            title: 'Raise Ticket',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RaiseTicketScreen(),
                ),
              );
            },
          ),
          CustomActionsTile(title: 'Raise Expence', onTap: () {}),
        ],
      ),
    );
  }
}
