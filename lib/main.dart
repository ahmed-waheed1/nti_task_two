import 'package:flutter/material.dart';
import 'drop_down_buttom.dart';
import 'profile_view.dart';

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
        scaffoldBackgroundColor: const Color(0xFFE5E5E5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFE5E5E5),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      title: 'Flutter Demo',
      home: const ProfileView(),
    );
  }
}
