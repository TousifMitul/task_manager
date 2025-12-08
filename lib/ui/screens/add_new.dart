import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/background.dart';

import '../widgets/tm_app_bar.dart';

class AddNew extends StatefulWidget {
  const AddNew({super.key});

  static const name = '/add-new';

  @override
  State<AddNew> createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: Background(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36,),
                Text('Add New Task', style: TextTheme.of(context).titleLarge),
                SizedBox(height: 8,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Title',
                  ),
                ),
                TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'Description',
                  ),
                ),
                SizedBox(height: 8,),
                FilledButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_circle_right_outlined),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
