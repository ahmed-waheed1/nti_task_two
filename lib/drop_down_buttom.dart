import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  final Logger logger = Logger();
  Test? selectedValue;
  final List<Test> testItems = [
    Test(a: 1),
    Test(a: 2),
    Test(a: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropDownButton'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/25/25694.png',
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              width: 200,
              child: DropdownButton<Test>(
                menuWidth: double.infinity,
                dropdownColor: Colors.white,
                isExpanded: true,
                value: selectedValue,
                focusColor: Colors.red,
                icon: const Icon(Icons.arrow_forward_ios_outlined),
                items: testItems.map((Test value) {
                  return DropdownMenuItem<Test>(
                    value: value,
                    child: Row(
                      children: [
                        const Icon(Icons.check),
                        const SizedBox(width: 10),
                        Text(
                          value.toString(),
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (Test? newValue) {
                  setState(() {
                    logger.d(newValue);
                    selectedValue = newValue;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Test {
  final int a;

  Test({required this.a});

  @override
  String toString() {
    return 'Test $a';
  }
}
