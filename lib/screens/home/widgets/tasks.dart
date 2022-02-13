// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, unused_element

import 'package:flutter/material.dart';

import '../../../models/task.dart';

class Tasks extends StatelessWidget {
  final tasksList = Task.generateTasks();

  get gridDelegate => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: tasksList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => tasksList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, tasksList[index])),
    );
  }

  Widget _buildAddTask() {
    return Text('Add Task');
  }

  Widget _buildTask(BuildContext context, Task task) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: task.bgcolor, borderRadius: BorderRadius.circular(20)),
    );
  }
}
