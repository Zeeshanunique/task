// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:task/screens/home/widgets/go_premium.dart';
import 'package:task/screens/home/widgets/tasks.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoPremium(),
          Container(
              padding: EdgeInsets.all(15),
              child: Text('Tasks',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
          Expanded(child: Tasks())
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        // ignore: duplicate_ignore
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            // margin: EdgeInsets.only(left: 15),
            height: 45,
            width: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/avatar.png'),
            ),
          ),
          SizedBox(width: 10),
          // ignore: prefer_const_constructors
          Text(
            "Hii, Zeeshu!",
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      actions: [
        Icon(
          Icons.more_vert,
          color: Colors.black,
          size: 40,
        ),
      ],
    );
  }
}
