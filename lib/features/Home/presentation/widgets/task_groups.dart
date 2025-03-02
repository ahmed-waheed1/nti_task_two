import 'package:flutter/material.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/style_manager.dart';
import 'task_groups_item.dart';

class TaskGroups extends StatelessWidget {
  const TaskGroups({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: AppSize.s20),
          child: Text(
            StringManager.taskGroups,
            style: getLightStyle(
              color: ColorManager.black2c,
              fontSize: FontSizeManager.s16,
            ),
          ),
        ),
        const SizedBox(height: AppSize.s20),
        Expanded(
          child: ListView.builder(
            itemCount: StringManager.taskGroupsItems.length,
            itemBuilder: (context, index) {
              return TaskGroupsItem(
                model: StringManager.taskGroupsItems[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
