import 'package:flutter/material.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../todo_app/user_card.dart';
import '../widgets/add_icon.dart';
import '../widgets/in_progress_tasks.dart';
import '../widgets/task_groups.dart';
import '../widgets/task_type_container_builder.dart';
import '../widgets/your_today_tasks_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                UserCard(),
                Spacer(),
                AddIcon(),
                SizedBox(width: AppSize.s20),
              ],
            ),
            YourTodayTasks(),
            SizedBox(height: AppSize.s20),
            InProgressTasks(),
            TaskTypeContainerBuilder(),
            SizedBox(height: AppSize.s20),
            Expanded(child: TaskGroups()),
          ],
        ),
      ),
    );
  }
}
