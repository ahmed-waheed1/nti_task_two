import 'package:flutter/material.dart';
import '../../../../core/resources/app_images.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.flagIcon,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
