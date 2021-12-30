import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int countTop = 50;
  int countBottom = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                      flex: countTop,
                      child: GestureDetector(
                        onTap: () {
                          print("tapped top");
                          setState(() {
                            countTop = countTop + 4;
                            countBottom = countBottom - 4;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.red.shade300,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: countBottom,
                      child: GestureDetector(
                        onTap: () {
                          print("tapped bottom");
                          setState(() {
                            countBottom = countBottom + 4;
                            countTop = countTop - 4;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.green.shade300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              countTop >= 95 || countBottom >= 95
                  ? Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: countTop >= 95
                          ? Colors.red.withOpacity(0.6)
                          : Colors.green.withOpacity(0.6),
                      child: Center(
                        child: Text(
                          countTop >= 95 ? "Red Wins!" : "Green Wins!",
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                    )
                  : Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
