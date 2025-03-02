import 'package:flutter/material.dart';

class TaskGroupsItemModel {
  final String title;
  final String iconPath;
  final double numberOfTasks;
  final Color numberOfTasksColor;
  final Color backgroundColorOfNumberOfTasks;
  TaskGroupsItemModel({
    required this.title,
    required this.iconPath,
    required this.numberOfTasks,
    required this.numberOfTasksColor,
    required this.backgroundColorOfNumberOfTasks,
  });
}
