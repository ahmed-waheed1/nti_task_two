import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/web.dart';

import 'image_paths.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  Logger logger = Logger();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImagePaths.startIcon,
            ),
            const Gap(70),
            Text(
              'Welcome To \n Do It !',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF24252C),
                fontSize: 24,
                fontFamily: GoogleFonts.lexendDeca().fontFamily,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Gap(50),
            Text(
              'Ready to conquer your tasks? Let\'s Do It together.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF6E6A7C),
                fontSize: 16,
                fontFamily: GoogleFonts.lexendDeca().fontFamily,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(50),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: const Color(0xff149954),
                  elevation: 10,
                  backgroundColor: const Color(0xFF149954),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                ),
                onPressed: () {
                  logger.d('Start Page Button Pressed');
                  Navigator.pushNamed(context, '/newUser');
                },
                child: Text(
                  'Let\'s Start',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontFamily: GoogleFonts.lexendDeca().fontFamily,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
