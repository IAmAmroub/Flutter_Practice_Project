import 'package:flutter/material.dart';

class CalendrierPage extends StatefulWidget {
  const CalendrierPage({super.key});

  @override
  State<CalendrierPage> createState() => _CalendrierPageState();
}

class _CalendrierPageState extends State<CalendrierPage> {
  String _value = '';

  Future _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2016),
        lastDate: DateTime(2099));

    if (picked != null) {
      setState(
          () => _value = '${picked.year} - ${picked.month} - ${picked.day}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendrier Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Text(_value),
              ElevatedButton(
                onPressed: _selectDate,
                child: const Text('date d\'inscription'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
