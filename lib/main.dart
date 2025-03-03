import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/Home/presentation/pages/home_page.dart';
import 'features/Home/presentation/pages/home_page_empty.dart';
import 'features/Home/presentation/pages/user_profile_view.dart';
import 'features/onBoarding/presentation/pages/new_user.dart';
import 'features/onBoarding/presentation/pages/setting_page.dart';
import 'features/onBoarding/presentation/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lexendDeca().fontFamily,
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFE5E5E5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFE5E5E5),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      initialRoute: '/start',
      routes: {
        '/': (context) => const HomePage(),
        '/settings': (context) => const SettingPage(),
        '/homeEmpty': (context) => const HomePageEmpty(),
        '/start': (context) => const StartPage(),
        '/newUser': (context) => const NewUser(),
        '/profile': (context) => const UserProfileView(),
      },
    );
  }
}
