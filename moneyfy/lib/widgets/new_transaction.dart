import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  // const NewTransaction({ Key? key }) : super(key: key);
  final title = TextEditingController();

  final amount = TextEditingController();

///////////////////////////////////////////////////

  void submitData() {
    final enteredTitle = title.text;
    final enteredAmount = amount.text;
    // print(enteredAmount + enteredTitle);
    widget.addTx(
      enteredTitle,
      double.parse(enteredAmount),
      // print(enteredAmount + enteredTitle),
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
              onSubmitted: (_) => submitData(),

              controller: title,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              // onChanged: (value) {
              //   amount = value;
              //   print(amount);
              // },
              keyboardType: TextInputType.number,
              controller: amount,
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
              onPressed: () {
                submitData();
              },
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
