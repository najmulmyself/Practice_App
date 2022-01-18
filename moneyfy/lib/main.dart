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
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
