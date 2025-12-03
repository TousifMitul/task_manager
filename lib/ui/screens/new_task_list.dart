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
        spacing: 8,
        children: [
          SizedBox(),
          _buildupTaskSummary(),
          Expanded(child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index){
            return ListTile(
              title: Text('Title of Task'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description of Task',style: TextStyle(color: Colors.grey),),
                  Text('Date of Task'),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                        child: Text('New',style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w600),),
                      ),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.grey,),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.grey,),
                      )
                      // Chip(label: Text('New'),shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      // backgroundColor: Colors.green,
                      // labelPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),)
                    ],
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index){
            return Divider();
          },
          ),
          ) ],
      ),
    );
  }



  Widget _buildupTaskSummary() {
    return SizedBox(
          height: 80,
          child: ListView.builder(
            itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Card(
                  elevation: 0,
                  color: Colors.grey,
                  margin: EdgeInsets.only(left: 8),
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
        );
  }
}
