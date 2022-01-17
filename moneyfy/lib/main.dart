import 'package:flutter/material.dart';
import 'package:moneyfy/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List transactions = [
    Transactions(
      id: 1,
      title: "New Shoes",
      amount: 60.20,
      date: DateTime.now(),
    ),
    Transactions(
      id: 2,
      title: "Grocery",
      amount: 40.15,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Column(
            children: [
              Card(
                child: Text("Hello"),
              ),
              Card(
                child: Text("World"),
              ),
            ],
          )),
    );
  }
}
