import 'package:flutter/material.dart';
import 'package:task/constants/colors.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  num? done;
  bool isLast;

  Task(
      {this.bgcolor,
      this.btncolor,
      this.done,
      this.iconData,
      this.iconcolor,
      this.isLast = false,
      this.left,
      this.title});
  static List<Task> generateTasks() {
    return [
      Task(
        iconData: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kYellowLight,
        iconcolor: kYellowDark,
        btncolor: kYellow,
        left: 3,
        done: 1,
      ),
      Task(
        iconData: Icons.cases_rounded,
        title: 'Work',
        bgcolor: kRedLight,
        iconcolor: kRedDark,
        btncolor: kRed,
        left: 0,
        done: 0,
      ),
      Task(
        iconData: Icons.favorite_rounded,
        title: 'Health',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 0,
        done: 0,
      ),
      Task(isLast: true)
    ];
  }
}
