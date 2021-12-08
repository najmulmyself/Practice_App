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

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Material App',
//       home: Scaffold(
//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           color: (Color(0xff27292A)),
//           child: Container(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   height: 100,
//                   child: Image.asset("assets/images/facebook.png"),
//                 ),
//                 SizedBox(
//                   height: 278,
//                 ),
//                 Text(
//                   "from",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 0.0),
//                   child: Container(
//                     height: 30,
//                     child: Image.asset("assets/images/meta.png"),
//                   ),
//                 ),
//               ],
//             ),
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
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffA6BCF0),
                Color(0xff356AE4),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("assets/images/Logo.png"),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "My Music",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
