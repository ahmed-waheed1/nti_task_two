import 'package:flutter/material.dart';
import '../../../../core/resources/app_padding.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/style_manager.dart';

class UserNameForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final FocusNode focusNode;
  final bool isFocused;

  const UserNameForm({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.focusNode,
    required this.isFocused,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        padding: const EdgeInsets.only(
          top: AppPadding.p16,
          bottom: AppPadding.p4,
          left: AppPadding.p4,
          right: AppPadding.p4,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isFocused ? ColorManager.green54 : Colors.transparent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(
            isFocused ? AppSize.s20 : AppSize.s10,
          ),
        ),
        child: TextFormField(
          controller: nameController,
          focusNode: focusNode,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return StringManager.enterName;
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: AppPadding.p20,
              horizontal: AppPadding.p20,
            ),
            fillColor: Colors.white,
            filled: true,
            labelText: StringManager.yourName,
            labelStyle: getRegularStyle(
              color: ColorManager.grey7c,
              fontSize: FontSizeManager.s14,
            ),
            hintText: StringManager.typeYourName,
            hintStyle: getLightStyle(
              color: ColorManager.grey7c,
              fontSize: FontSizeManager.s14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s10),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s10),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
