import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  TextStyle txtTitleStyle = const TextStyle(color: Colors.white, fontSize: 26);
  TextStyle txtStyle = const TextStyle(fontSize: 26);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(title: const Text('Home Page')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              tileColor: Colors.grey,
              title: Center(
                child: Text(
                  'Formulaire',
                  style: txtTitleStyle,
                ),
              ),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              title: Text(
                'Elevated Buttons',
                style: txtStyle,
              ),
              onTap: () => Navigator.pushNamed(context, '/ElevatedButtons'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              title: Text(
                'Text Button',
                style: txtStyle,
              ),
              onTap: () => Navigator.pushNamed(context, '/TextButton'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              title: Text(
                'Icon Button',
                style: txtStyle,
              ),
              onTap: () => Navigator.pushNamed(context, '/IconButton'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              title: Text(
                'Text Field',
                style: txtStyle,
              ),
              onTap: () => Navigator.pushNamed(context, '/TextField'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              title: Text(
                'Radio Buttons',
                style: txtStyle,
              ),
              onTap: () => Navigator.pushNamed(context, '/RadioButtons'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              title: Text(
                'CheckBox',
                style: txtStyle,
              ),
              onTap: () => Navigator.pushNamed(context, '/CheckBox'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              title: Text(
                'Calendrier',
                style: txtStyle,
              ),
              onTap: () => Navigator.pushNamed(context, '/Calendrier'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              title: Text(
                'DropDownButton',
                style: txtStyle,
              ),
              onTap: () => Navigator.pushNamed(context, '/DropDownButton'),
            ),
            ListTile(
              tileColor: Colors.blueGrey,
              title: Center(
                child: Text(
                  'Forms',
                  style: txtTitleStyle,
                ),
              ),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              title: Text(
                'Book Your Flight',
                style: txtStyle,
              ),
              onTap: () => Navigator.pushNamed(context, '/Form'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              title: Text(
                'Student Registration',
                style: txtStyle,
              ),
              onTap: () => Navigator.pushNamed(context, '/StudentRegistration'),
            ),
            ListTile(
              tileColor: Colors.indigo,
              title: Center(
                child: Text(
                  'Pages',
                  style: txtTitleStyle,
                ),
              ),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              title: Text(
                'Sliver AppBar',
                style: txtStyle,
              ),
              onTap: () => Navigator.pushNamed(context, '/SliverAppBar'),
            ),
            ListTile(
              trailing: const Icon(Icons.navigate_next),
              title: Text(
                'P Page',
                style: txtStyle,
              ),
              onTap: () => Navigator.pushNamed(context, '/PPage'),
            ),
          ],
        ),
      ),
    );
  }
}
