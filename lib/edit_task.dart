import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EditTask extends StatefulWidget {
  const EditTask({super.key});

  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  DateTime? _startDate;
  DateTime? _endDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 40,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Edit Task',
            style: TextStyle(
              color: const Color(0xFF24252C),
              fontSize: 19,
              fontFamily: GoogleFonts.lexendDeca().fontFamily,
              fontWeight: FontWeight.w300,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.red, // Change the color to red
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/deleteicon.svg',
                        height: 18,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Delete',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: GoogleFonts.lexendDeca().fontFamily,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  'In Progress',
                  style: TextStyle(
                    color: const Color(0xFF24252C),
                    fontSize: 18,
                    fontFamily: GoogleFonts.lexendDeca().fontFamily,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'Believe you can, and you\'re halfway there.',
                  style: TextStyle(
                    color: const Color(0xFF24252C),
                    fontSize: 16,
                    fontFamily: GoogleFonts.lexendDeca().fontFamily,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/home.svg',
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: CustomTextFormField(
                          labelText: 'Task Group',
                          hintText: 'Home',
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const CustomTextFormField(
                  labelText: 'Task Name',
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: TextField(
                    minLines: 1,
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      labelText: 'Description',
                      labelStyle: TextStyle(
                        color: const Color(0xFF6E6A7C),
                        fontSize: 16,
                        fontFamily: GoogleFonts.lexendDeca().fontFamily,
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/calendericon.svg',
                        height: 50,
                        width: 50,
                      ),
                      Expanded(
                        child: CustomDatePicker(
                          labelText: 'Start Date',
                          selectedDate: _startDate,
                          onDateSelected: (date) {
                            setState(() {
                              _startDate = date;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/calendericon.svg',
                        height: 50,
                        width: 50,
                      ),
                      Expanded(
                        child: CustomDatePicker(
                          labelText: 'End Date',
                          selectedDate: _endDate,
                          onDateSelected: (date) {
                            setState(() {
                              _endDate = date;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String? hintText;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        filled: true,
        fillColor: Colors.white,
        labelText: labelText,
        hintText: hintText,
        labelStyle: TextStyle(
          color: const Color(0xFF6E6A7C),
          fontSize: 16,
          fontFamily: GoogleFonts.lexendDeca().fontFamily,
          fontWeight: FontWeight.w200,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class CustomDatePicker extends StatelessWidget {
  final String labelText;
  final DateTime? selectedDate;
  final ValueChanged<DateTime> onDateSelected;

  const CustomDatePicker({
    super.key,
    required this.labelText,
    this.selectedDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: labelText,
        labelStyle: TextStyle(
          color: const Color(0xFF6E6A7C),
          fontSize: 16,
          fontFamily: GoogleFonts.lexendDeca().fontFamily,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
        );
        if (pickedDate != null) {
          TimeOfDay? pickedTime = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
          );
          if (pickedTime != null) {
            final dateTime = DateTime(
              pickedDate.year,
              pickedDate.month,
              pickedDate.day,
              pickedTime.hour,
              pickedTime.minute,
            );
            onDateSelected(dateTime);
          }
        }
      },
      controller: TextEditingController(
        text: selectedDate != null
            ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}   ${selectedDate!.hour}:${selectedDate!.minute}"
            : '',
      ),
      style: TextStyle(
        color: const Color(0xFF24252C),
        fontSize: 14,
        fontFamily: GoogleFonts.lexendDeca().fontFamily,
        fontWeight: FontWeight.w200,
      ),
    );
  }
}
