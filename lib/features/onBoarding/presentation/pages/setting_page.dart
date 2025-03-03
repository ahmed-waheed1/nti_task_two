import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/app_images.dart';
import '../../../../core/resources/app_padding.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/style_manager.dart';
import '../cubit/setting_page_cubit.dart';
import '../cubit/setting_page_state.dart';
import '../widgets/cloud_checkbox.dart';
import '../widgets/notification_switch.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingPageCubit(),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: AppSize.s50,
          leading: Row(
            children: [
              const SizedBox(width: AppSize.s10),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  AppImages.arrowBackIcon,
                  height: AppSize.s35,
                  width: AppSize.s35,
                ),
              ),
            ],
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
              child: BlocBuilder<SettingPageCubit, SettingPageState>(
                builder: (context, state) {
                  bool isNotificationEnabled =
                      state is SettingPageNotificationToggled
                          ? state.isEnabled
                          : false;
                  return NotificationSwitch(
                    isNotificationEnabled: isNotificationEnabled,
                    onChanged: (value) {
                      context
                          .read<SettingPageCubit>()
                          .toggleNotification(value);
                    },
                  );
                },
              ),
            ),
            BlocBuilder<SettingPageCubit, SettingPageState>(
              builder: (context, state) {
                bool isCloudEnabled =
                    state is SettingPageCloudToggled ? state.isEnabled : false;
                return CloudCheckbox(
                  isCloudEnabled: isCloudEnabled,
                  onChanged: (value) {
                    context.read<SettingPageCubit>().toggleCloud(value!);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
