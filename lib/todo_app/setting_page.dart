import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'image_paths.dart';

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
        leadingWidth: 35,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            ImagePaths.arrowBackIcon,
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: const Color(0xFF24252C),
            fontSize: 19,
            fontFamily: GoogleFonts.lexendDeca().fontFamily,
            fontWeight: FontWeight.w300,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notifications',
                  style: TextStyle(
                    color: const Color(0xFF24252C),
                    fontSize: 19,
                    fontFamily: GoogleFonts.lexendDeca().fontFamily,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Switch(
                  activeColor: const Color(0xffffffff),
                  activeTrackColor: const Color(0xff149954),
                  value: _isNotificationEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isNotificationEnabled = value;
                    });
                  },
                )
              ],
            ),
          ),
          CheckboxListTile(
            checkboxScaleFactor: 1.5,
            activeColor: const Color(0xff149954),
            title: Text(
              'Enable Cloud',
              style: TextStyle(
                color: const Color(0xFF24252C),
                fontSize: 19,
                fontFamily: GoogleFonts.lexendDeca().fontFamily,
                fontWeight: FontWeight.w300,
              ),
            ),
            value: _isCloudEnabled,
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
