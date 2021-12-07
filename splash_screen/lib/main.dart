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
          leading: const Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Icon(
              Icons.menu_open,
              color: Colors.black,
              size: 30,
            ),
          ),
          backgroundColor: Colors.white10,
          elevation: 0,
        ),
        body: Container(
          color: Colors.white10,
          // width: double.infinity,
          // height: double.infinity,
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/images/cars.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
