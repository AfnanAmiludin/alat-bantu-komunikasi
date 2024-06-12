import 'package:flutter/material.dart';
import 'package:tugas_akhir/main_screen_two.dart';
import 'package:tugas_akhir/speech.dart';
import 'package:tugas_akhir/wordToSentence.dart';
import 'package:tugas_akhir/word_to_sentence/wordToSentence.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: const MainScreenTwo());
  }
}
