import 'package:flutter/material.dart';

class PropertyChildWidget extends StatelessWidget {
  const PropertyChildWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh Button")),
// ignore: avoid_unnecessary_containers
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              textStyle: const TextStyle(color: Colors.white),
            ),
            onPressed: () {},
            child: const Text("Button", style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
