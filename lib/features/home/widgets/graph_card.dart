import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/home/widgets/bar_graph.dart';
import 'package:interview_task_vasai/main.dart';

class GraphCard extends StatelessWidget {
  const GraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      color: Colors.white,
      child: Column(
        children: [
          //
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: mq.height * 0.02,
                horizontal: mq.width * 0.04,
              ),
              child: const Text(
                'Leave Summary',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ),

          //
          CustomBarGraph(),
        ],
      ),
    );
  }
}
