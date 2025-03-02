import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/style_manager.dart';
import '../models/task_type_container_model.dart';

class TaskTypeContainer extends StatelessWidget {
  final TaskTypeContainerModel model;
  const TaskTypeContainer({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s150,
      width: AppSize.s240,
      margin: const EdgeInsets.all(AppSize.s10),
      padding: const EdgeInsets.all(AppSize.s20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s20),
        color: model.color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model.title,
                  style: getRegularStyle(
                    color: model.titleColor,
                    fontSize: FontSizeManager.s16,
                  )),
              SvgPicture.asset(
                model.iconPath,
                height: AppSize.s30,
                width: AppSize.s30,
              ),
            ],
          ),
          Text(model.subTitle,
              style: getLightStyle(
                color: model.subTitleColor,
                fontSize: FontSizeManager.s16,
              )),
        ],
      ),
    );
  }
}
