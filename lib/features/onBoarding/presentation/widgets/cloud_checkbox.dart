import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/style_manager.dart';

class CloudCheckbox extends StatelessWidget {
  final bool isCloudEnabled;
  final ValueChanged<bool?> onChanged;

  const CloudCheckbox({
    super.key,
    required this.isCloudEnabled,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      checkboxScaleFactor: 1.5,
      activeColor: ColorManager.green54,
      title: Text(
        StringManager.enableCloud,
        style: getLightStyle(
          color: ColorManager.black2c,
          fontSize: FontSizeManager.s19,
        ),
      ),
      value: isCloudEnabled,
      onChanged: onChanged,
    );
  }
}
