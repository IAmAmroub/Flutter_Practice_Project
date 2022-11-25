import 'package:flutter/material.dart';

class IconButtonPage extends StatefulWidget {
  IconButtonPage({super.key});

  @override
  State<IconButtonPage> createState() => _IconButtonPageState();
}

class _IconButtonPageState extends State<IconButtonPage> {
  TextStyle txtStyle = const TextStyle(fontSize: 32);
  int _value = 0;

  void _add() {
    setState(() {
      _value++;
    });
  }

  void _substract() {
    setState(() {
      _value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Button Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Text('value = $_value', style: txtStyle),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.green,
                    child: IconButton(
                      onPressed: _add,
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    child: IconButton(
                      onPressed: _substract,
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
