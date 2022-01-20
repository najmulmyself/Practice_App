import 'package:flutter/material.dart';
import 'package:moneyfy/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:moneyfy/widgets/new_transaction.dart';
import 'package:moneyfy/widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // String? title;
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

  void _startAddNewTransaction(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          // we can pass underscore (_) in builder.
          return GestureDetector(
            onTap: () {},
            behavior: HitTestBehavior.opaque,
            child: NewTransaction(_addNewTransaction),
          );

          // name of the widget we want to show in the pop up menu. which is NewTransaction()
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        // colorScheme: ColorScheme(primary: , primaryVariant: primaryVariant, secondary: secondary, secondaryVariant: secondaryVariant, surface: surface, background: background, error: error, onPrimary: onPrimary, onSecondary: onSecondary, onSurface: onSurface, onBackground: onBackground, onError: onError, brightness: brightness),
        accentColor: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Builder(builder: (context) {
        // need to add builder for separate context.
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).accentColor,
            title: Text('Material App Bar'),
            actions: [
              IconButton(
                onPressed: () => _startAddNewTransaction(context),
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
                // UserTransaction(),
                TransactionList(_userTransactions),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _startAddNewTransaction(context);
            },
            child: Icon(Icons.add),
          ),
        );
      }),
    );
  }
}
