import 'package:flutter/material.dart';

class ElevatedButtonsPage extends StatefulWidget {
  const ElevatedButtonsPage({super.key});

  @override
  State<ElevatedButtonsPage> createState() => _ElevatedButtonsPageState();
}

class _ElevatedButtonsPageState extends State<ElevatedButtonsPage> {
  var index = 0;
  var questions = [
    "Question 1",
    "Question 2",
    "Question 3",
    "Question 4",
    "Question 5",
    "Question 6",
  ];

  void _onPressed() {
    setState(() {
      index++;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevated Buttons Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Text(
                questions[index],
                style: const TextStyle(fontSize: 32),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: _onPressed,
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 32),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
