import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Material Appflasfjsladf',
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu_open),
            backgroundColor: Colors.redAccent.shade100,
            elevation: 0,
          ),
          body: Container(
            color: Colors.redAccent.shade100,
            width: double.infinity,
          )),
    );
  }
}
