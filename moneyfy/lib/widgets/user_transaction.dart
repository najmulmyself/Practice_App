import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

final title = TextEditingController();
final amount = TextEditingController();

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
            );
  }
}