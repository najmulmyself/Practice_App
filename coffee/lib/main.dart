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
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    height: 400,
                    // child: Image.asset(
                    //   "assets/images/coffee.png",
                    //   fit: BoxFit.cover,
                    // ),
                    decoration: BoxDecoration(
                      // color: Colors.amber,
                      image: const DecorationImage(
                        image: AssetImage("assets/images/coffee.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cappuccino",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "Drizzled with Caramel",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 8.0,
                              left: 38.0,
                            ),
                            child: Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "A single espresso shot poured into hot foamy milk, with the surface topped with mildly sweetened cocoa powder and drizzled with scrumptious caramel syrup ... Read More",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text(
                        "Choice of Milk",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            child: Expanded(
                              flex: 1,
                              child: Container(
                                width: 90,
                                height: 30,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 4.0,
                                    left: 10,
                                  ),
                                  child: Text(
                                    "Oat Milk",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                // color: Colors.red,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 17.0, right: 17.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.white),
                              ),
                              child: Expanded(
                                flex: 1,
                                child: Container(
                                  width: 90,
                                  height: 30,
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 4.0,
                                      left: 10,
                                    ),
                                    child: Text(
                                      "Soy Milk",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Expanded(
                              flex: 1,
                              child: Container(
                                width: 90,
                                height: 30,
                                // color: Colors.red,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 4.0,
                                    left: 10,
                                  ),
                                  child: Text(
                                    "Moy Milk",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child: Expanded(
                          //     flex: 1,
                          //     child: Container(
                          //       width: 90,
                          //       height: 20,
                          //       color: Colors.red,
                          //     ),
                          //   ),
                          // ),
                          // Expanded(
                          //   flex: 1,
                          //   child: Container(
                          //     width: 90,
                          //     height: 20,
                          //     color: Colors.red,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 58.0),
                          child: Column(
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "\$122",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            child: Text(
                              "BUY NOW",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
