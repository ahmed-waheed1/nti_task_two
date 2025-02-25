import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TodayTasks extends StatelessWidget {
  const TodayTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Today\'s Tasks'),
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
                    color: const Color(0xFFCEEBDC),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.add, color: Colors.black, size: 18),
                      const SizedBox(width: 4),
                      Text(
                        'Add',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: GoogleFonts.lexendDeca().fontFamily,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            const CategorySelection(),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 20),
                Text(
                  'Results',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: GoogleFonts.lexendDeca().fontFamily,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF149954),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Text(
                    '3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: GoogleFonts.lexendDeca().fontFamily,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(
                          color: Color(0xFFE5E5E5),
                          width: 1,
                        )),
                    child: SizedBox(
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  height: 50,
                                  width: 30,
                                  'assets/work.svg',
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Design Meeting',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily:
                                        GoogleFonts.lexendDeca().fontFamily,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 70,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(18),
                                      color: const Color(0xFFF3F5F4)),
                                  child: Text(
                                    'Future',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily:
                                          GoogleFonts.lexendDeca().fontFamily,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Go to supermarket to buy some milk & eggs',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: GoogleFonts.lexendDeca().fontFamily,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}

class CategorySelection extends StatelessWidget {
  const CategorySelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 70,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xFF149954),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Text(
            'All',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: GoogleFonts.lexendDeca().fontFamily,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          width: 70,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Text(
            'Future',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: GoogleFonts.lexendDeca().fontFamily,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          width: 70,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Text(
            'Missed',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: GoogleFonts.lexendDeca().fontFamily,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          width: 70,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Text(
            'Done',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: GoogleFonts.lexendDeca().fontFamily,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
