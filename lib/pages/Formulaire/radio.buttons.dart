import 'package:flutter/material.dart';

class RadioButtonsPage extends StatefulWidget {
  const RadioButtonsPage({super.key});

  @override
  State<RadioButtonsPage> createState() => _RadioButtonsPageState();
}

enum Groupes { groupe1, groupe2 }

class _RadioButtonsPageState extends State<RadioButtonsPage> {
  Groupes _groupe = Groupes.groupe1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Buttons Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              ListTile(
                title: const Text('Groupe 1'),
                leading: Radio<Groupes>(
                  value: Groupes.groupe1,
                  groupValue: _groupe,
                  onChanged: (Groupes? value) {
                    setState(() {
                      _groupe = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Groupe 2'),
                leading: Radio<Groupes>(
                  value: Groupes.groupe2,
                  groupValue: _groupe,
                  onChanged: (Groupes? value) {
                    setState(() {
                      _groupe = value!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
