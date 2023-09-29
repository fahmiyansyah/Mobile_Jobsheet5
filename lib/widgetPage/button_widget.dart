import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              //Add your onPressed code here!
            },
            child: Icon(Icons.thumb_up),
            backgroundColor: Colors.pink),
      ),
    );
  }
}
