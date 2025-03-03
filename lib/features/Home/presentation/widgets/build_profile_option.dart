import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/resources/app_images.dart';
import '../../../../core/resources/app_padding.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/style_manager.dart';

class BuildProfileOption extends StatelessWidget {
  final String iconPath;
  final String text;
  final VoidCallback onTap;
  const BuildProfileOption({
    super.key,
    required this.iconPath,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: AppSize.s70,
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              height: AppSize.s30,
              width: AppSize.s30,
            ),
            const SizedBox(width: AppSize.s10),
            Text(
              text,
              style: getLightStyle(
                color: ColorManager.black2c,
                fontSize: FontSizeManager.s14,
              ),
            ),
            const Spacer(),
            Transform.rotate(
              angle: -1.5,
              child: SvgPicture.asset(
                AppImages.arrowBackIcon,
                height: AppSize.s30,
                width: AppSize.s30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
