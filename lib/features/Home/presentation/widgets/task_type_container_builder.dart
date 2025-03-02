import 'package:flutter/material.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/string_manager.dart';
import 'task_type_container.dart';

class TaskTypeContainerBuilder extends StatelessWidget {
  const TaskTypeContainerBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: StringManager.taskTypeContainerModelItems.length,
        itemBuilder: (context, index) {
          return TaskTypeContainer(
            model: StringManager.taskTypeContainerModelItems[index],
          );
        },
      ),
    );
  }
}
