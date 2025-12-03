import 'package:flutter/material.dart';

import '../widgets/TaskCard.dart';

class CompletedTaskList extends StatefulWidget {
  const CompletedTaskList({super.key});

  @override
  State<CompletedTaskList> createState() => _CompletedTaskListState();
}

class _CompletedTaskListState extends State<CompletedTaskList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return TaskCard();
        },
        separatorBuilder: (context, index) {
          return SizedBox();
        },
      ),
    );
  }
}
