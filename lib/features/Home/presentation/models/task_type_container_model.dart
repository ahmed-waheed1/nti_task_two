import 'package:flutter/material.dart';
import '../../../../core/resources/color_manager.dart';

class TaskTypeContainerModel {
  final String title;
  final String subTitle;
  final Color color;
  final Color titleColor;
  final Color subTitleColor;
  final String iconPath;
  TaskTypeContainerModel({
    required this.title,
    required this.subTitle,
    required this.color,
    required this.iconPath,
    this.titleColor = ColorManager.white,
    this.subTitleColor = ColorManager.white,
  });
}
