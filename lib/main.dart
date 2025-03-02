import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/Home/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      // routes: {
      //   '/': (context) => const StartPage(),
      //   '/newUser': (context) => const NewUser(),
      // },
      title: 'Todo App',
      // initialRoute: '/',
      home: const HomePage(),
    );
  }
}
