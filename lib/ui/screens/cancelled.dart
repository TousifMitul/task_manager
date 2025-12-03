import 'package:flutter/material.dart';

import '../widgets/TaskCard.dart';

class CancelledTaskList extends StatefulWidget {
  const CancelledTaskList({super.key});

  @override
  State<CancelledTaskList> createState() => _CancelledTaskListState();
}

class _CancelledTaskListState extends State<CancelledTaskList> {
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
