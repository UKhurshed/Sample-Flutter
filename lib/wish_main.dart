// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttersample/uiButton.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Pull to Fresh',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: WishScreen(),
//     );
//   }
// }
//
// class WishScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Wish'),
//       ),
//       body: Container(
//           child: Padding(
//         padding: const EdgeInsets.all(25),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Write a Wish',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(
//               height: 29,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border(bottom: BorderSide(color: Colors.grey)),
//               ),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Your wish',
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('ADD IMAGE'),
//                 // Container(
//                 //   width: size.width * 0.5,
//                 //   child: ClipRRect(
//                 //     borderRadius: BorderRadius.circular(30),
//                 //     child: MaterialButton(
//                 //       color: Color.fromRGBO(255, 128, 91, 1),
//                 //       onPressed: () {},
//                 //       child: Align(
//                 //           child: Text(
//                 //         'CHIP IN & SEND',
//                 //         style: TextStyle(color: Colors.white, fontSize: 20),
//                 //       )),
//                 //     ),
//                 //   ),
//                 // )
//                 UIFlatButton(
//                   color: Color.fromRGBO(255, 128, 91, 1),
//                   onPressed: (){},
//                   child: Text('CHIP & SEND'),
//                   height: UIFlatButtonHeight.high,
//                   width: 150,
//                 )
//               ],
//             )
//           ],
//         ),
//       )),
//     );
//   }
// }
