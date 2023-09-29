import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> menuList = ["Task", "Text", "Image", "Cupertino & AppBar", "Button", "Scaffold"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilihan Nomor'),
      ),
      body: ListView.builder(
        itemCount: menuList.length,
        itemBuilder: (context, index) {
          final menu = menuList[index];
          final nomor = index;
          return ListTile(
            title: Text('$menu Widget'),
            onTap: () {
              Navigator.pushNamed(context, '/nomor$nomor');
            },
          );
        },
      ),
    );
  }
}