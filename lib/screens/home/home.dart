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
      bottomNavigationBar: _buildBottonNavigation(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }

  Widget _buildBottonNavigation() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  Icons.home_rounded,
                  size: 30,
                )),
            BottomNavigationBarItem(
                label: "Person",
                icon: Icon(
                  Icons.person_rounded,
                  size: 30,
                )),
          ],
        ),
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
