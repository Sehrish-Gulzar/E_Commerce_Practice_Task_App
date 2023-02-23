// import 'package:e_commerce_app/Login.dart';
// import 'package:flutter/material.dart';
//
// import 'SignUp Page.dart';
//
// void main() {
//   runApp(MaterialApp(home: OnOff()));
// }
//
// class OnOff extends StatefulWidget {
//   const OnOff({Key? key}) : super(key: key);
//
//   @override
//   State<OnOff> createState() => _OnOffState();
// }
//
// class _OnOffState extends State<OnOff> {
//   List<Widget> myWidget = [SignUp(), Login()];
//   int currentIndex = 0;
//   var isSelected = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         title: Center(child: Text("Switching Between Screens")),
//       ),
//       bottomNavigationBar: Container(
//         child: SwitchListTile(
//             activeTrackColor: Colors.green,
//             title: Text("ON OFF"),
//             value: isSelected,
//             onChanged: (value) {
//               setState(() {
//                 isSelected = value;
//                 if (isSelected == true) {
//                   currentIndex = 1;
//                 }
//                 if (isSelected == false) {
//                   currentIndex = 0;
//                 }
//               });
//               print(value);
//             }),
//         color: Colors.blueGrey,
//       ),
//       body: Center(child: myWidget[currentIndex]),
//     );
//   }
// }
