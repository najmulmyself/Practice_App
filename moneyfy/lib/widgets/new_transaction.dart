import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // const NewTransaction({ Key? key }) : super(key: key);
  final title = TextEditingController();
  final amount = TextEditingController();
//  THIS IS USED TO ACCEPT THE FUNCTION WHICH PASSED FROM ANOTHER FILE;
//  NEWTRANSACTION REALISED THAT , OKAY HOWEVER I GOT WILL STORE IN ADDTX;
//  REMEMBER THE CONSTRUCTOR METHOD;

  final Function addTx;

  NewTransaction(this.addTx);

///////////////////////////////////////////////////

  void submitData() {
    final enteredTitle = title.text;
    final enteredAmount = amount.text;
    addTx(
      enteredTitle,
      double.parse(enteredAmount),
    );
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
                submitData;
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
