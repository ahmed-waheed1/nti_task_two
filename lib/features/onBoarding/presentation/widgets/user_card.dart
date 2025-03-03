import 'package:flutter/material.dart';
import '../../../../core/resources/app_images.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/style_manager.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/profile');
      },
      child: Row(
        children: [
          const SizedBox(width: AppSize.s20),
          const CircleAvatar(
            backgroundColor: ColorManager.black2c,
            radius: AppSize.s30,
            backgroundImage: AssetImage(AppImages.flagIcon),
          ),
          const SizedBox(width: AppSize.s10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringManager.hello,
                textAlign: TextAlign.center,
                style: getLightStyle(
                  color: ColorManager.black2c,
                  fontSize: FontSizeManager.s12,
                ),
              ),
              Text(
                StringManager.userName,
                style: getLightStyle(
                  color: ColorManager.black2c,
                  fontSize: FontSizeManager.s16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
