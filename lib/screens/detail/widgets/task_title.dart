// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "Task",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'TimeLine',
                    style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ]))
      ]),
    );
  }
}
