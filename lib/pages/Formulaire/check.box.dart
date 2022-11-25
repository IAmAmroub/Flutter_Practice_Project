import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
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
              CheckboxListTile(
                value: _isChecked1,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked1 = value!;
                  });
                },
                title: const Text('Archive 1'),
                controlAffinity: ListTileControlAffinity.leading,
                subtitle: const Text('Archive subtitle'),
                secondary: const Icon(Icons.archive),
                activeColor: Colors.green,
              ),
              CheckboxListTile(
                value: _isChecked2,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked2 = value!;
                  });
                },
                title: const Text('Archive 2'),
                controlAffinity: ListTileControlAffinity.leading,
                subtitle: const Text('Archive subtitle'),
                secondary: const Icon(Icons.archive),
                activeColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
