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

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff7E65FF),
                    ),
                    width: 300,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "this morning's meeting. we have to improve the quality of office facility and another...",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "09/12/21",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.push_pin,
                                color: Colors.white,
                                size: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //Card 2//
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff7E65FF),
                    ),
                    width: 300,
                    height: 110,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "need for this month:",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "- clothes",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "- snack",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "11/12/21",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //Card 3//
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff7E65FF),
                    ),
                    width: 300,
                    height: 110,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Message from Liam:",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Don't forget to complete assignment on Tuesday",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "10/12/21",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25, right: 28.0),
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                    backgroundColor: Color(0xff7E65FF),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
