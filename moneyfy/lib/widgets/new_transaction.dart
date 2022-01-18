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
                addTx(title.text, double.parse(amount.text));
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
