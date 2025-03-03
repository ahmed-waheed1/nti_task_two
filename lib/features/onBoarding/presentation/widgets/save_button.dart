import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../../../../core/resources/app_padding.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/style_manager.dart';

class SaveButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final Logger logger;

  const SaveButton({
    super.key,
    required this.formKey,
    required this.logger,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          if (formKey.currentState!.validate()) {
            logger.d('New User Button Pressed');
            Navigator.pushNamed(context, '/');
          }
        },
        child: Text(
          StringManager.save,
          style: getRegularStyle(
            color: ColorManager.white,
            fontSize: FontSizeManager.s16,
          ),
        ),
      ),
    );
  }
}
