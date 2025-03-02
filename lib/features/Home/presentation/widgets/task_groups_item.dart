import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/style_manager.dart';
import '../models/task_groups_item_model.dart';

class TaskGroupsItem extends StatelessWidget {
  final TaskGroupsItemModel model;
  const TaskGroupsItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSize.s10),
      padding: const EdgeInsets.all(AppSize.s20),
      height: AppSize.s70,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s20),
        color: ColorManager.white,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            model.iconPath,
            height: AppSize.s30,
            width: AppSize.s30,
          ),
          const SizedBox(width: AppSize.s20),
          Text(
            model.title,
            style: getRegularStyle(
              color: ColorManager.black2c,
              fontSize: FontSizeManager.s16,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.s10,
              vertical: AppSize.s5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s12),
              color: model.backgroundColorOfNumberOfTasks,
            ),
            child: Text(
              model.numberOfTasks.round().toString(),
              style: getRegularStyle(
                color: model.numberOfTasksColor,
                fontSize: FontSizeManager.s14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
