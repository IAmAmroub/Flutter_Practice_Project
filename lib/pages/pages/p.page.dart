import 'package:flutter/material.dart';

class PPage extends StatelessWidget {
  const PPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('App bar'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  color: Colors.amber,
                  child: const Icon(
                    Icons.person,
                    size: 100,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Flutter Leamer'),
                    Text('Flutter dev mobile'),
                  ],
                )
                // Container(
                //   color: Colors.lightBlueAccent,
                //   padding: const EdgeInsets.all(20),
                //   child: const Text("Hello 1"),
                // ),
                // Container(
                //   color: Colors.lightBlue,
                //   padding: const EdgeInsets.all(20),
                //   child: const Text("Hello 2"),
                // ),
                // Container(
                //   color: Colors.greenAccent,
                //   padding: const EdgeInsets.all(20),
                //   child: const Text("Hello 3"),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
