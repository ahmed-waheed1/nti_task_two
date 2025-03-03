import 'package:flutter/material.dart';

import '../../../../core/resources/app_images.dart';
import '../../../../core/resources/app_padding.dart';
import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../onBoarding/presentation/widgets/user_card.dart';
import '../widgets/build_profile_option.dart';

class UserProfileView extends StatefulWidget {
  const UserProfileView({super.key});

  @override
  State<UserProfileView> createState() => _UserProfileViewState();
}

class _UserProfileViewState extends State<UserProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p14,
            vertical: AppPadding.p10,
          ),
          child: Column(
            children: [
              const UserCard(),
              const SizedBox(height: AppSize.s20),
              BuildProfileOption(
                iconPath: AppImages.userIcon,
                text: StringManager.updateUser,
                onTap: () {
                  Navigator.pushNamed(context, '/newUser');
                },
              ),
              const SizedBox(height: AppSize.s20),
              BuildProfileOption(
                iconPath: AppImages.settingsIcon,
                text: StringManager.settings,
                onTap: () {
                  Navigator.pushNamed(context, '/settings');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
