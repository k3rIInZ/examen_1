import 'package:flutter/material.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Index 2: To do Tasks',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, backgroundColor: Color.fromARGB(255, 243, 33, 33), color: Colors.white),
      ),
    );
  }
}
