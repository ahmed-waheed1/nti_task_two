import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'user_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const UserCard(),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/setting');
                    },
                    child: SvgPicture.asset(
                      'assets/icons/add_new_task.svg',
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: _getContent(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'There are no tasks yet,\nPress the button\nTo add New Task ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF24252C),
            fontSize: 19,
            fontFamily: GoogleFonts.lexendDeca().fontFamily,
            fontWeight: FontWeight.w300,
          ),
        ),
        SvgPicture.asset(
          'assets/icons/no_tasks.svg',
        ),
      ],
    );
  }
}

class TaskGroupDropDown extends StatefulWidget {
  const TaskGroupDropDown({super.key});

  @override
  State<TaskGroupDropDown> createState() => _TaskGroupDropDownState();
}

class _TaskGroupDropDownState extends State<TaskGroupDropDown> {
  final List<TaskGroupItem> taskGroups = [
    TaskGroupItem(name: 'All', iconPath: 'assets/icons/home.svg'),
    TaskGroupItem(name: 'Work', iconPath: 'assets/icons/work.svg'),
    TaskGroupItem(name: 'Personal', iconPath: 'assets/icons/personal.svg'),
    TaskGroupItem(name: 'Shopping', iconPath: 'assets/icons/shopping.svg'),
    TaskGroupItem(name: 'Study', iconPath: 'assets/icons/study.svg'),
  ];

  TaskGroupItem? selectedTaskGroup;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField2<TaskGroupItem>(
                isExpanded: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                hint: Text(
                  'Select task group',
                  style: TextStyle(
                    color: const Color(0xFF6E6A7C),
                    fontSize: 14,
                    fontFamily: GoogleFonts.lexendDeca().fontFamily,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                items: taskGroups
                    .map((item) => DropdownMenuItem<TaskGroupItem>(
                          value: item,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                item.iconPath,
                                height: 30,
                                width: 30,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                item.name,
                                style: TextStyle(
                                  color: const Color(0xFF24252C),
                                  fontSize: 16,
                                  fontFamily:
                                      GoogleFonts.lexendDeca().fontFamily,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Please select task group';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    selectedTaskGroup = value;
                  });
                },
                onSaved: (value) {
                  selectedTaskGroup = value;
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black45,
                  ),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskGroupItem {
  final String name;
  final String iconPath;

  TaskGroupItem({required this.name, required this.iconPath});
}
