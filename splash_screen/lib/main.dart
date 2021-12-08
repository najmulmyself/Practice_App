// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // title: 'Material Appflasfjsladf',
//       home: Scaffold(
//         // appBar: AppBar(
//         //   leading: const Padding(
//         //     padding: const EdgeInsets.only(left: 18.0),
//         //     child: Icon(
//         //       Icons.menu_open,
//         //       color: Colors.black,
//         //       size: 30,
//         //     ),
//         //   ),
//         //   backgroundColor: Colors.white10,
//         //   elevation: 0,
//         // ),
//         body: Container(
//           color: (Color(0xff27292A)),
//           // width: double.infinity,
//           // height: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 child: Image.asset("assets/images/facebook.png"),
//                 width: double.infinity,
//                 height: 100,
//               ),
//               // Text(
//               //   "Book Your Ride",
//               //   style: TextStyle(
//               //       fontSize: 30,
//               //       fontWeight: FontWeight.bold,
//               //       color: Colors.blueAccent.shade400),
//               // ),
//               const SizedBox(
//                 height: 40,
//               ),
//               // ElevatedButton(
//               //   onPressed: () {},
//               //   child: Text("Get a Car"),
//               // ),
//               Column(
//                 // mainAxisAlignment: ,
//                 children: [
//                   Text("from"),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          body: Container(
              width: double.infinity,
              color: (Color(0xff27292A)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    child: Image.asset("assets/images/facebook.png"),
                  ),
                ],
              ))),
    );
  }
}
