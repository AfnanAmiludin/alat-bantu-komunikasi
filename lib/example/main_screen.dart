// import 'package:flutter/material.dart';
// import 'package:tugas_akhir/services/object_service.dart';
// import 'package:tugas_akhir/text_to_speech/home.dart';
// import 'package:tugas_akhir/word_to_sentence/wordToSentence.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int myIndex = 0;
//   List<Widget> widgetList = const [TextToSpeech(), WordToSentence(), Setting()];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         children: widgetList,
//         index: myIndex,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         onTap: (index) {
//           setState(() {
//             myIndex = index;
//           });
//         },
//         currentIndex: myIndex,
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home ',
//               backgroundColor: Colors.amber),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.adb_sharp),
//               label: 'Home ',
//               backgroundColor: Colors.blue),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Home ',
//               backgroundColor: Colors.blueGrey)
//         ],
//       ),
//     );
//   }
// }
