import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/resources/app_images.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/style_manager.dart';

class HomePageEmptyBody extends StatelessWidget {
  const HomePageEmptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(StringManager.noTasks,
            textAlign: TextAlign.center,
            style: getLightStyle(
              fontSize: 20,
              color: Colors.black54,
            )),
        SvgPicture.asset(
          AppImages.noTasksIcon,
        ),
      ],
    );
  }
}
