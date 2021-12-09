import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xff201520),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  // child: Image.asset(
                  //   "assets/images/coffee.png",
                  //   fit: BoxFit.cover,
                  // ),
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage("assets/images/coffee.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
