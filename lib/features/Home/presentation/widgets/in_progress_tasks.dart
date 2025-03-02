import 'package:flutter/material.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/style_manager.dart';

class InProgressTasks extends StatelessWidget {
  const InProgressTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: AppSize.s20),
        Text(
          StringManager.inProgressTasks,
          style: getLightStyle(
            color: ColorManager.black2c,
            fontSize: FontSizeManager.s16,
          ),
        ),
        const SizedBox(width: AppSize.s20),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSize.s10,
            vertical: AppSize.s5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s16),
            color: ColorManager.lightGreen,
          ),
          child: Text(
            StringManager.numberOfTasks,
            style: getRegularStyle(
              color: ColorManager.green54,
              fontSize: FontSizeManager.s12,
            ),
          ),
        )
      ],
    );
  }
}
