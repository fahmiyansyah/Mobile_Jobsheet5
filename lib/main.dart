import 'package:belajar_widget/homePage.dart';
import 'package:belajar_widget/widgetPage/button_widget.dart';
import 'package:belajar_widget/widgetPage/iOs_cupertino_widget.dart';
import 'package:belajar_widget/widgetPage/image_widget.dart';
import 'package:belajar_widget/widgetPage/scaffold_widget.dart';
import 'package:belajar_widget/widgetPage/task.dart';
import 'package:belajar_widget/widgetPage/text_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/nomor0': (context) => TaskPage(),
        '/nomor1': (context) => TextWidget(),
        '/nomor2': (context) => ImageWidget(),
        '/nomor3': (context) => Cupertino(),
        '/nomor4': (context) => Button(),
        '/nomor5': (context) => ScaffoldWdiget()
      },
    );
  }
}
