import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'user_card.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            children: [
              const UserCard(),
              const SizedBox(height: 20),
              Container(
                height: 70,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/usericon.svg',
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Update Profile',
                      style: TextStyle(
                        color: const Color(0xFF24252C),
                        fontSize: 16,
                        fontFamily: GoogleFonts.lexendDeca().fontFamily,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const Spacer(),
                    Transform.rotate(
                      angle: -1.5,
                      child: SvgPicture.asset(
                        'assets/icons/arrow_back.svg',
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 70,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/settings.svg',
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: const Color(0xFF24252C),
                        fontSize: 16,
                        fontFamily: GoogleFonts.lexendDeca().fontFamily,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const Spacer(),
                    Transform.rotate(
                      angle: -1.5,
                      child: SvgPicture.asset(
                        'assets/icons/arrow_back.svg',
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
