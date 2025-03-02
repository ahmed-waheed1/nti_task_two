import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/resources/app_images.dart';

class AddIcon extends StatelessWidget {
  const AddIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/setting');
      },
      child: SvgPicture.asset(
        AppImages.addIcon,
        height: 30,
        width: 30,
      ),
    );
  }
}
