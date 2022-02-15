// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:task/screens/detail/widgets/date_picker.dart';
import 'package:task/screens/detail/widgets/task_title.dart';
import 'package:task/screens/detail/widgets/task_timeline.dart';
import '../../../models/task.dart';

class DetailPage extends StatelessWidget {
  final Task task;
  DetailPage(this.task);

  @override
  Widget build(BuildContext context) {
    var detailList = task.desc;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [DatePicker(), TaskTitle()],
              ),
            ),
          ),
          detailList == null
              ? SliverFillRemaining(
                  child: Container(
                      color: Colors.white,
                      child: Center(
                          child: Text(
                        'No tasks today',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ))),
                )
              : SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (_, index) => TaskTimeline(detailList[index]),
                      childCount: detailList.length),
                ),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 90,
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 20,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      actions: [
        Icon(
          Icons.more_vert,
          size: 40,
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${task.title} tasks',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'You have ${task.left} tasks for Today!',
              style: TextStyle(fontSize: 12, color: Colors.grey[700]),
            )
          ],
        ),
      ),
    );
  }
}
