import 'package:flutter/material.dart';

import '../../../../core/resources/app_size.dart';
import '../../../../todo_app/user_card.dart';
import '../widgets/add_icon.dart';
import '../widgets/home_page_empty_body.dart';

class HomePageEmpty extends StatefulWidget {
  const HomePageEmpty({super.key});

  @override
  State<HomePageEmpty> createState() => _HomePageEmptyState();
}

class _HomePageEmptyState extends State<HomePageEmpty> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UserCard(),
                Spacer(),
                AddIcon(),
                SizedBox(width: AppSize.s20),
              ],
            ),
            SizedBox(height: AppSize.s20),
            Expanded(
              child: HomePageEmptyBody(),
            ),
          ],
        ),
      ),
    );
  }
}
