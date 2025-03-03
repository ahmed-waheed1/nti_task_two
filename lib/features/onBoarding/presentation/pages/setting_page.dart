import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/resources/app_images.dart';
import '../../../../core/resources/app_padding.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/style_manager.dart';
import '../widgets/cloud_checkbox.dart';
import '../widgets/notification_switch.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _isNotificationEnabled = false;
  bool _isCloudEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: AppSize.s35,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            AppImages.arrowBackIcon,
          ),
        ),
        title: Text(
          StringManager.settings,
          style: getLightStyle(
            color: ColorManager.black2c,
            fontSize: FontSizeManager.s19,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppPadding.p12),
            child: NotificationSwitch(
              isNotificationEnabled: _isNotificationEnabled,
              onChanged: (value) {
                setState(() {
                  _isNotificationEnabled = value;
                });
              },
            ),
          ),
          CloudCheckbox(
            isCloudEnabled: _isCloudEnabled,
            onChanged: (value) {
              setState(() {
                _isCloudEnabled = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
