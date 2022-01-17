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
    Transactions(
      id: 3,
      title: "Shirt",
      amount: 50.15,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Text("Hello"),
              ),
              Column(
                children: transactions
                    .map(
                      (tx) => Card(
                        child: Row(
                          children: [
                            Container(
                              child: Text(tx.amount.toString()),
                            ),
                            Column(
                              children: [
                                Text(tx.title),
                                Text(tx.date.toString()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          )),
    );
  }
}
