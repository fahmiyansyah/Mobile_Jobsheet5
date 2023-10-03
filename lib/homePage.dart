import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> menuList = [
    {"title": "Task", "icon": Icons.task, "color": Colors.red},
    {"title": "Text", "icon": Icons.text_fields, "color": Colors.orange},
    {"title": "Image", "icon": Icons.image, "color": Colors.yellow},
    {"title": "Cupertino & AppBar", "icon": Icons.cake, "color": Colors.green},
    {"title": "Button", "icon": Icons.touch_app, "color": Colors.blue},
    {"title": "Scaffold", "icon": Icons.layers, "color": Colors.purple},
    {"title": "Dialog", "icon": Icons.message, "color": Colors.pink},
    {
      "title": "Input and Selection",
      "icon": Icons.input,
      "color": Colors.deepPurple
    },
    {
      "title": "Date and Time Pickers",
      "icon": Icons.watch_later,
      "color": Colors.teal
    },
    {"title": "Container", "icon": Icons.crop_square, "color": Colors.brown},
    {
      "title": "Property Child",
      "icon": Icons.child_care,
      "color": Colors.indigo
    },
    {
      "title": "Property Alignment",
      "icon": Icons.format_align_center,
      "color": Colors.lightBlue
    },
    {"title": "Property Color", "icon": Icons.color_lens, "color": Colors.lime},
    {
      "title": "Property Height and Width",
      "icon": Icons.aspect_ratio,
      "color": Colors.grey
    },
    {
      "title": "Property Margin",
      "icon": Icons.format_indent_increase,
      "color": Colors.cyan
    },
    {
      "title": "Property Padding",
      "icon": Icons.border_clear,
      "color": Colors.deepOrange
    },
    {
      "title": "Property Transform",
      "icon": Icons.transform,
      "color": Colors.amber
    },
    {
      "title": "Property Decoration",
      "icon": Icons.format_paint,
      "color": Colors.greenAccent
    },
    {"title": "Row", "icon": Icons.view_column, "color": Colors.blueGrey},
    {"title": "Column", "icon": Icons.view_stream, "color": Colors.lightGreen},
    {
      "title": "Stack",
      "icon": Icons.layers_clear,
      "color": Colors.deepPurpleAccent
    },
    {"title": "ListView", "icon": Icons.list, "color": Colors.orangeAccent},
    {"title": "GridView", "icon": Icons.grid_on, "color": Colors.pinkAccent},
    {"title": "Temperature", "icon": Icons.icecream, "color": Colors.white},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilihan Menu'),
      ),
      body: ListView.builder(
        itemCount: menuList.length,
        itemBuilder: (context, index) {
          final menuItem = menuList[index];
          final title = menuItem['title'] as String;
          final icon = menuItem['icon'] as IconData;

          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: Icon(icon),
              title: Text('$title Widget'),
              tileColor: menuItem['color'],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/nomor$index');
              },
            ),
          );
        },
      ),
    );
  }
}
