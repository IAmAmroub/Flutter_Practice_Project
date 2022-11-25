import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  String _value = '';

  void _onChange(String value) {
    setState(() => _value = 'change $value');
  }

  void _onSubmit(String value) {
    setState(
      () {
        _value = 'submit $value';
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 200,
              color: Colors.amber,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text('Modal BottomSheet'),
                    ElevatedButton(
                      child: const Text('Close BottomSheet'),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Text(_value),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Nom',
                  hintText: 'Tapez votre nom',
                  icon: Icon(Icons.person),
                ),
                onChanged: _onChange,
                onSubmitted: _onSubmit,
                autocorrect: true,
                autofocus: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
