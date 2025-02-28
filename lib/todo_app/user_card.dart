import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: Color(0xFF24252C),
          radius: 30,
          backgroundImage: AssetImage('assets/icons/flag_icon.png'),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF24252C),
                fontSize: 12,
                fontFamily: GoogleFonts.lexendDeca().fontFamily,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'Ahmed Saber',
              style: TextStyle(
                color: const Color(0xFF24252C),
                fontSize: 16,
                fontFamily: GoogleFonts.lexendDeca().fontFamily,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
