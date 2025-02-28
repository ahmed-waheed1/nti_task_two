import 'package:flutter/material.dart';
import 'todo_app/home_page.dart';
import 'todo_app/new_user.dart';
import 'todo_app/setting_page.dart';
import 'todo_app/start_page.dart';

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
      home: const TaskGroupDropDown(),
    );
  }
}
