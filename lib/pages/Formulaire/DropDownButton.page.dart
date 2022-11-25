import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Texas',
  'Shaanxi',
  'Dubai',
  'Istanbul',
  'Casablanca'
];

class DropDownButtonPage extends StatefulWidget {
  const DropDownButtonPage({super.key});

  @override
  State<DropDownButtonPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<DropDownButtonPage> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              DropdownButton(
                value: dropdownValue,
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
