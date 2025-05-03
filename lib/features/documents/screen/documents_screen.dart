import 'package:flutter/material.dart';
import 'package:interview_task_vasai/features/home/widgets/custom_documents_tile.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: AppBar(title: Text('Documents')),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          ...List.generate(7, (index) {
            return CustomDocumentsTile(
              title: 'Resume.pdf',
              subtitle: '16th May, 2024',
            );
          }),
        ],
      ),
    );
  }
}
