import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: 50,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.teal.shade100,
                  ),
                ),
                Expanded(
                  flex: 50,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.purple.shade100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
