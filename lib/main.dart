import 'package:flutter/material.dart';
import 'package:prijet_flutter_1/pages/Form/form.dart';
import 'package:prijet_flutter_1/pages/Form/student.registration.page.dart';
import 'package:prijet_flutter_1/pages/Formulaire/DropDownButton.page.dart';
import 'package:prijet_flutter_1/pages/Formulaire/calendrier.page.dart';
import 'package:prijet_flutter_1/pages/Formulaire/check.box.dart';
import 'package:prijet_flutter_1/pages/Formulaire/elevated.buttons.dart';
import 'package:prijet_flutter_1/pages/Formulaire/icon.button.dart';
import 'package:prijet_flutter_1/pages/Formulaire/radio.buttons.dart';
import 'package:prijet_flutter_1/pages/Formulaire/text.button.dart';
import 'package:prijet_flutter_1/home.dart';
import 'package:prijet_flutter_1/pages/Formulaire/text.field.dart';
import 'package:prijet_flutter_1/pages/pages/p.page.dart';
import 'package:prijet_flutter_1/pages/pages/sliver.appbar.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomePage(),
        '/ElevatedButtons': (context) => const ElevatedButtonsPage(),
        '/TextButton': (context) => TextButtonPage(),
        '/IconButton': (context) => IconButtonPage(),
        '/TextField': (context) => const TextFieldPage(),
        '/RadioButtons': (context) => const RadioButtonsPage(),
        '/CheckBox': (context) => const CheckBoxPage(),
        '/Calendrier': (context) => const CalendrierPage(),
        '/DropDownButton': (context) => const DropDownButtonPage(),
        '/Form': (context) => const FormPage(),
        '/SliverAppBar': (context) => const SliverAppBarPage(),
        '/StudentRegistration': (context) => const StudentRegistrationPage(),
        '/PPage': (context) => const PPage(),
      },
      initialRoute: '/home',
    );
  }
}
