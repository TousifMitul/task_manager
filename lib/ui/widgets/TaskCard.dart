import 'package:flutter/material.dart';
class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: ListTile(
        tileColor: Colors.white,
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
                    borderRadius: BorderRadius.circular(16),
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
      ),
    );
  }
}