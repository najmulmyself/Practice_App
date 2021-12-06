import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent.shade100,
          leading: Icon(Icons.menu),
          title: Text("Contact App"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, i) {
              return const ListTile(
                leading: Icon(
                  Icons.person,
                  size: 40,
                ),
                title: Text("Abdullah Al Ziad"),
                subtitle: Text("CEO at Ziad For You"),
                trailing: Icon(Icons.call),
              );
            },
          ),
        ),
      ),
    );
  }
}
