import 'package:flutter/material.dart';
import 'package:moneyfy/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:moneyfy/widgets/user_transaction.dart';
// import 'package:moneyfy/widgets/transaction_list.dart';
// import 'package:moneyfy/widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // String? title;
  // String? amount;
  // final title = TextEditingController();
  // final amount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Text("Hello"),
              ),
              UserTransaction(),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
