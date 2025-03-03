import 'package:flutter/material.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/style_manager.dart';

class NotificationSwitch extends StatelessWidget {
  final bool isNotificationEnabled;
  final ValueChanged<bool> onChanged;

  const NotificationSwitch({
    super.key,
    required this.isNotificationEnabled,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          StringManager.notifications,
          style: getLightStyle(
            color: ColorManager.black2c,
            fontSize: FontSizeManager.s19,
          ),
        ),
        Switch(
          activeColor: ColorManager.white,
          activeTrackColor: ColorManager.green54,
          value: isNotificationEnabled,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
