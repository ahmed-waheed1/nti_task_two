import 'package:flutter/material.dart';

import 'core/resources/app_size.dart';
import 'core/resources/color_manager.dart';
import 'core/resources/string_manager.dart';
import 'core/resources/style_manager.dart';
import 'features/Home/presentation/pages/home_page.dart';

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
        fontFamily: StyleManager.fontFamily,
        useMaterial3: true,
        scaffoldBackgroundColor: ColorManager.scaffoldBackGround,
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorManager.scaffoldBackGround,
          elevation: AppSize.s0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      title: StringManager.appName,
      home: const HomePage(),
    );
  }
}
