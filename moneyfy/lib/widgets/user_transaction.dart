import 'package:flutter/material.dart';
import 'package:moneyfy/models/transaction.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List _userTransactions = [
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

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transactions(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
