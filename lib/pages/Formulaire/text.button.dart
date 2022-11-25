import 'package:flutter/material.dart';

class TextButtonPage extends StatefulWidget {
  TextButtonPage({super.key});

  @override
  State<TextButtonPage> createState() => _TextButtonPageState();
}

class _TextButtonPageState extends State<TextButtonPage> {
  TextStyle txtStyle = const TextStyle(fontSize: 32);
  String _value = "";

  void _onPressed() {
    setState(() {
      _value = DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Button Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Text(_value, style: txtStyle),
              ElevatedButton(
                onPressed: _onPressed,
                child: const Text('Click here'),
              ),
              TextButton(
                onPressed: _onPressed,
                child: const Text('Click here'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
