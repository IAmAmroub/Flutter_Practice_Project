import 'package:flutter/material.dart';

class StudentRegistrationPage extends StatefulWidget {
  const StudentRegistrationPage({super.key});

  @override
  State<StudentRegistrationPage> createState() =>
      _StudentRegistrationPageState();
}

enum Gender { male, female }

class _StudentRegistrationPageState extends State<StudentRegistrationPage> {
  Gender _gender = Gender.male;
  bool _isCricketChecked = false;
  bool _isFootballChecked = false;
  bool _isChessChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Student Registration Page",
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Enter your informations:",
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.lightBlue),
                            ),
                            labelText: 'my first name',
                            hintText: 'Tapez votre prenom',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.lightBlue),
                            ),
                            labelText: 'my last name',
                            hintText: 'Tapez votre nom',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.lightBlue),
                            ),
                            labelText: 'someone@exemple.com',
                            hintText: 'Tapez votre email',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.lightBlue),
                            ),
                            labelText: '0766777733',
                            hintText: 'Tapez votre telephone',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.lightBlue),
                            ),
                            labelText: 'my city',
                            hintText: 'Tapez votre ville',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Divider(
                      height: 4,
                      color: Colors.lightBlue,
                    ),
                  ),
                  const Text("Gender"),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text('Male'),
                          leading: Radio<Gender>(
                            value: Gender.male,
                            groupValue: _gender,
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text('Female'),
                          leading: Radio<Gender>(
                            value: Gender.female,
                            groupValue: _gender,
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value!;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Divider(
                      height: 4,
                      color: Colors.lightBlue,
                    ),
                  ),
                  const Text("Hobbies"),
                  CheckboxListTile(
                    value: _isCricketChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isCricketChecked = value!;
                      });
                    },
                    title: const Text('Cricket'),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    value: _isFootballChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isFootballChecked = value!;
                      });
                    },
                    title: const Text('Football'),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    value: _isChessChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChessChecked = value!;
                      });
                    },
                    title: const Text('Chess'),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Divider(
                      height: 4,
                      color: Colors.lightBlue,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.lightBlue),
                        ),
                        labelText: 'my password',
                        hintText: 'Tapez votre mote de pass',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 30),
                    width: MediaQuery.of(context).size.width - 60,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Register'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
