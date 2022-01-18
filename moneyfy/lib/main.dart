import 'package:flutter/material.dart';
import 'package:moneyfy/transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List transactions = [
    Transactions(
      id: 1,
      title: "New Shoes",
      amount: 60.22,
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
    Transactions(
      id: 4,
      title: "Shorts",
      amount: 55.15,
      date: DateTime.now(),
    ),
  ];
  // String? title;
  // String? amount;
  final title = TextEditingController();
  final amount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Text("Hello"),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: "Text"),
                      // onChanged: (value) {
                      //   title = value;
                      //   print(title);
                      // },

                      controller: title,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                      // onChanged: (value) {
                      //   amount = value;
                      //   print(amount);
                      // },
                      controller: amount,
                    ),
                    TextButton(
                      onPressed: () {
                        print(title.text);
                        print(amount.text);
                      },
                      child: Text(
                        'Add Transaction',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: transactions
                  .map(
                    (tx) => Card(
                      child: Row(
                        children: [
                          SingleChildScrollView(),
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.purple,
                                width: 2,
                              ),
                            ),
                            // child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              '\$${tx.amount}'.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.purple),
                            ),
                            // ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tx.title,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                DateFormat.yMMMd().format(tx.date),
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
