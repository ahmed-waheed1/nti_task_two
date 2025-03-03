import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:logger/logger.dart';

import '../../../../core/resources/app_images.dart';
import '../../../../core/resources/app_padding.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/style_manager.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  Logger logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppImages.startIcon,
            ),
            const Gap(AppSize.s70),
            Text(
              StringManager.welcomeMessage,
              textAlign: TextAlign.center,
              style: getRegularStyle(
                color: ColorManager.black2c,
                fontSize: FontSizeManager.s24,
              ),
            ),
            const Gap(AppSize.s50),
            Text(
              StringManager.readyMessage,
              textAlign: TextAlign.center,
              style: getMediumStyle(
                color: ColorManager.grey7c,
                fontSize: FontSizeManager.s16,
              ),
            ),
            const Gap(AppSize.s50),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: ColorManager.green54,
                  elevation: 10,
                  backgroundColor: ColorManager.green54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s10),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p40,
                    vertical: AppPadding.p15,
                  ),
                ),
                onPressed: () {
                  logger.d('Start Page Button Pressed');
                  Navigator.pushNamed(context, '/newUser');
                },
                child: Text(
                  StringManager.letsStart,
                  textAlign: TextAlign.center,
                  style: getLightStyle(
                    color: ColorManager.white,
                    fontSize: FontSizeManager.s19,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
