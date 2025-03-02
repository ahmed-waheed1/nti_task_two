import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/app_size.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/style_manager.dart';
import '../models/task_group_drop_down_item_model.dart';

class TaskGroupDropDown extends StatefulWidget {
  const TaskGroupDropDown({super.key});

  @override
  State<TaskGroupDropDown> createState() => _TaskGroupDropDownState();
}

class _TaskGroupDropDownState extends State<TaskGroupDropDown> {
  TaskGroupItem? selectedTaskGroup;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: AppSize.s30),
          Padding(
            padding: const EdgeInsets.all(AppSize.s8),
            child: DropdownButtonFormField2<TaskGroupItem>(
              isExpanded: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSize.s15),
                  borderSide: BorderSide.none,
                ),
                fillColor: ColorManager.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSize.s15),
                ),
              ),
              hint: Text(
                StringManager.taskGroupDropDownHint,
                style: getExtraLightStyle(
                  color: ColorManager.black2c,
                  fontSize: FontSizeManager.s16,
                ),
              ),
              items: StringManager.taskGroupDropDownList
                  .map((item) => DropdownMenuItem<TaskGroupItem>(
                        value: item,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              item.iconPath,
                              height: AppSize.s30,
                              width: AppSize.s30,
                            ),
                            const SizedBox(width: AppSize.s10),
                            Text(
                              item.name,
                              style: getLightStyle(
                                color: const Color(0xFF6E6A7C),
                                fontSize: FontSizeManager.s16,
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return StringManager.taskGroupSelectionMessage;
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
                padding: EdgeInsets.only(right: AppSize.s8),
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
                iconSize: AppSize.s30,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.s8, vertical: AppSize.s4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
