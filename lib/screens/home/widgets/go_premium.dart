// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class GoPremium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Stack(
        children: [
          Container(
            // ignore: prefer_const_construuyctors
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.grey[800], shape: BoxShape.circle),
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Go Premium',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Get unlimited access\nto all features!',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
