import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';

class NewUser extends StatefulWidget {
  const NewUser({super.key});

  @override
  State<NewUser> createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  final Logger logger = Logger();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      logger.d(_nameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/icons/flag_icon.png',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            const Gap(70),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: _nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Your Name',
                    labelStyle: TextStyle(
                      color: const Color(0xFF6E6A7C),
                      fontSize: 14,
                      fontFamily: GoogleFonts.lexendDeca().fontFamily,
                      fontWeight: FontWeight.w400,
                    ),
                    hintText: 'type your name here',
                    hintStyle: TextStyle(
                      color: const Color(0xFF6E6A7C),
                      fontSize: 14,
                      fontFamily: GoogleFonts.lexendDeca().fontFamily,
                      fontWeight: FontWeight.w200,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xFF149954),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ),
            const Gap(70),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: const Color(0xff149954),
                    elevation: 10,
                    backgroundColor: const Color(0xFF149954),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      logger.d('New User Button Pressed');
                      Navigator.pushNamed(context, '/');
                    }
                  },
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: GoogleFonts.lexendDeca().fontFamily,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
