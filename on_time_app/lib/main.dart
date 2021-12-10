import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Color(0xff0E091A),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('on.time'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Toggle Bar//

            Container(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xff3C1F7B),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: 250,
                          height: 40,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "Schedule",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 125.0, top: 4),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff0E091A),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            width: 120,
                            height: 32,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 38.0, top: 5),
                              child: Text(
                                "Notes",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //Text Field//

            Padding(
              padding: const EdgeInsets.only(top: 1, left: 20.0, right: 20),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffCCC3FE)),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Icon(Icons.search),
                    ),
                    hintText: "Search Note",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            //Card//

            Container(
              width: 300,
              height: 100,
              color: Colors.amberAccent,
            )
          ],
        ),
      ),
    );
  }
}
