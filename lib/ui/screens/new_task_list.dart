import 'package:flutter/material.dart';
class NewTaskList extends StatefulWidget {
  const NewTaskList({super.key});

  @override
  State<NewTaskList> createState() => _NewTaskListState();
}

class _NewTaskListState extends State<NewTaskList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 16,
        children: [
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Card(
                    elevation: 0,
                    color: Colors.grey,
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                      child: Column(
                        children: [
                          Text('12',style: TextTheme.of(context).titleMedium,),
                          Text('New',style: TextTheme.of(context).labelSmall,),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
