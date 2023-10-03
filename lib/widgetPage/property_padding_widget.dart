import 'package:flutter/material.dart';

class PropertyPaddingWidget extends StatelessWidget {
  const PropertyPaddingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh Padding")),
        body: Container(
          padding: const EdgeInsets.only(left: 20),
          margin: const EdgeInsets.all(20),
          height: 99,
          width: 250,
          alignment: Alignment.topCenter,
          color: Colors.orange,
          child: const Text(
            'Ayo Belajar Flutter',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
