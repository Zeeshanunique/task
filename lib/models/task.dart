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
  List<Map<String, dynamic>>? desc;
  bool isLast;

  Task(
      {this.bgcolor,
      this.btncolor,
      this.done,
      this.iconData,
      this.iconcolor,
      this.isLast = false,
      this.left,
      this.desc,
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
          desc: [
            {
              'time': '9:00 am',
              'title': 'GO for a walk wit dog',
              'slot': '9:00 - 10:00 am',
              'tlColor': kRedDark,
              'bgcolor': kRedLight
            },
            {
              'time': '10:00 am',
              'title': 'Shot o Dribble',
              'slot': '10:00 - 12:00 am',
              'tlColor': kBlueDark,
              'bgcolor': kBlueLight
            },
            {
              'time': '12:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '1:00 pm',
              'title': 'Call with Client',
              'slot': '1:00 - 2:00 pm',
              'tlColor': kYellowDark,
              'bgcolor': kYellowLight
            },
            {
              'time': '2:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
          ]),
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
