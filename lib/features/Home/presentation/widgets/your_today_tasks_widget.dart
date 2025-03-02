import 'package:flutter/material.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/style_manager.dart';

class YourTodayTasks extends StatelessWidget {
  const YourTodayTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSize.s20),
      padding: const EdgeInsets.all(AppSize.s20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s30),
        color: ColorManager.green54,
      ),
      height: AppSize.s200,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringManager.yourProgress,
            style: getRegularStyle(
              color: ColorManager.white,
              fontSize: FontSizeManager.s16,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: StringManager.yourProgressPersentageValue,
                        style: getMediumStyle(
                          color: ColorManager.white,
                          fontSize: FontSizeManager.s40,
                        )),
                    TextSpan(
                      text: '%',
                      style: getMediumStyle(
                        color: ColorManager.white,
                        fontSize: FontSizeManager.s24,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.s20,
                    vertical: AppSize.s10,
                  ),
                  backgroundColor: ColorManager.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s16),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  StringManager.viewTasks,
                  style: getRegularStyle(
                    color: ColorManager.green54,
                    fontSize: FontSizeManager.s15,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
