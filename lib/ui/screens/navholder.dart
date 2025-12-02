import 'package:flutter/material.dart';

import '../widgets/tm_app_bar.dart';
import 'new_task_list.dart';

class NavHolder extends StatefulWidget {
  const NavHolder({super.key});

  static const String name = '/nav_holder';

  @override
  State<NavHolder> createState() => _NavHolderState();
}

class _NavHolderState extends State<NavHolder> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    NewTaskList(),
    // ProgressTaskList(),
    // CancelledTaskList(),
    // CompletedTaskList(),
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: TMAppBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.new_label_outlined),
            label: 'New',
          ),
          NavigationDestination(
            icon: Icon(Icons.access_time),
            label: 'Progress',
          ),
          NavigationDestination(icon: Icon(Icons.cancel), label: 'Cancelled'),
          NavigationDestination(icon: Icon(Icons.done), label: 'Completed'),
        ],
      ),
    );
  }
}
