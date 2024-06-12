import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_tts/flutter_tts.dart';

class Sentence extends StatefulWidget {
  const Sentence({super.key});

  @override
  State<Sentence> createState() => _SentenceState();
}

class _SentenceState extends State<Sentence> {
  final ExpansionTileController controller = ExpansionTileController();
  final _textController = TextEditingController();
  final FlutterTts _flutterTts = FlutterTts();

  speak(String text) async {
    await _flutterTts.setLanguage("id-ID");
    await _flutterTts.setPitch(10);
    await _flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          centerTitle: true,
          title: Text(
            "Sentence",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff739CD2),
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.width * 0.67,
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                        child: Stack(
                          children: [
                            Positioned(
                                bottom:
                                    MediaQuery.of(context).size.width * 0.32,
                                right: MediaQuery.of(context).size.width * 0,
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image(
                                        image:
                                            AssetImage('assets/icons/awan.png'),
                                        height: 180,
                                      )
                                    ],
                                  ),
                                )),
                            Positioned(
                                top: MediaQuery.of(context).size.width * 0.27,
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image(
                                        image:
                                            AssetImage('assets/icons/awan.png'),
                                        height: 180,
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )),
                ],
              ),
              Container(
                child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width * 0.9,
                          child: Stack(
                            children: [
                              Positioned(
                                  bottom: MediaQuery.of(context).size.width * 0,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/icons/rumput.png'))),
                              Positioned(
                                  left:
                                      MediaQuery.of(context).size.width * 0.24,
                                  bottom: MediaQuery.of(context).size.width * 0,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/icons/rumput.png'))),
                              Positioned(
                                  bottom: MediaQuery.of(context).size.width * 0,
                                  left:
                                      MediaQuery.of(context).size.width * 0.47,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/icons/rumput.png'))),
                              Positioned(
                                  bottom: MediaQuery.of(context).size.width * 0,
                                  left: MediaQuery.of(context).size.width * 0.6,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/icons/rumput2.png'))),
                            ],
                          ),
                        ),
                        Positioned(
                            left: MediaQuery.of(context).size.width * 0.59,
                            bottom: MediaQuery.of(context).size.width * 0,
                            child: Image(
                                image: AssetImage('assets/icons/jerapah.png'),
                                height: 350)),
                      ],
                    )),
              )
            ],
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          speak(_textController.text =
                              "Tolong ambilkan jus jeruk");
                        },
                        child: Image(
                          height: 100,
                          width: 90,
                          image: AssetImage('assets/images/jusjeruk.jpeg'),
                        ),
                      ),
                      Divider(
                        indent: MediaQuery.of(context).size.width * 0.07,
                      ),
                      InkWell(
                        onTap: () {
                          speak(_textController.text = "Aku ingin pisang");
                        },
                        child: Image(
                          height: 100,
                          width: 90,
                          image: AssetImage('assets/images/pisang.jpeg'),
                        ),
                      ),
                      Divider(
                        indent: MediaQuery.of(context).size.width * 0.07,
                      ),
                      InkWell(
                        onTap: () {
                          speak(_textController.text =
                              "aku ingin makan buah apel");
                        },
                        child: Image(
                          height: 100,
                          width: 90,
                          image: AssetImage('assets/images/apel.jpeg'),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    indent: MediaQuery.of(context).size.width * 0.07,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          speak(_textController.text =
                              "Tolong ambilkan air putih");
                        },
                        child: Image(
                          height: 100,
                          width: 90,
                          image: AssetImage('assets/images/air.jpeg'),
                        ),
                      ),
                      Divider(
                        indent: MediaQuery.of(context).size.width * 0.07,
                      ),
                      InkWell(
                        onTap: () {
                          speak(_textController.text =
                              "Tolong ambilkan buah mangga");
                        },
                        child: Image(
                          height: 100,
                          width: 90,
                          image: AssetImage('assets/images/mangga.jpeg'),
                        ),
                      ),
                      Divider(
                        indent: MediaQuery.of(context).size.width * 0.07,
                      ),
                      InkWell(
                        onTap: () {
                          speak(_textController.text =
                              "Tolong buatkan ayam goreng");
                        },
                        child: Image(
                          height: 100,
                          width: 90,
                          image: AssetImage('assets/images/ayamgoreng.jpeg'),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    indent: MediaQuery.of(context).size.width * 0.07,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          speak(_textController.text = "Aku ingin makan bakso");
                        },
                        child: Image(
                          height: 100,
                          width: 90,
                          image: AssetImage('assets/images/bakso.jpeg'),
                        ),
                      ),
                      Divider(
                        indent: MediaQuery.of(context).size.width * 0.07,
                      ),
                      InkWell(
                        onTap: () {
                          speak(
                              _textController.text = "tolong buatkan aku mie");
                        },
                        child: Image(
                          height: 100,
                          width: 90,
                          image: AssetImage('assets/images/mie.jpeg'),
                        ),
                      ),
                      Divider(
                        indent: MediaQuery.of(context).size.width * 0.07,
                      ),
                      InkWell(
                        onTap: () {
                          speak(_textController.text =
                              "Aku ingin makan mie ayam");
                        },
                        child: Image(
                          height: 100,
                          width: 90,
                          image: AssetImage('assets/images/mieayam.jpeg'),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    indent: MediaQuery.of(context).size.width * 0.07,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          speak(_textController.text =
                              "Aku ingin makan nasi goreng");
                        },
                        child: Image(
                          height: 100,
                          width: 90,
                          image: AssetImage('assets/images/nasigoreng.jpeg'),
                        ),
                      ),
                      Divider(
                        indent: MediaQuery.of(context).size.width * 0.07,
                      ),
                      InkWell(
                        onTap: () {
                          speak(_textController.text = "Tolong ambilkan susu");
                        },
                        child: Image(
                          height: 100,
                          width: 90,
                          image: AssetImage('assets/images/susu.jpeg'),
                        ),
                      ),
                      Divider(
                        indent: MediaQuery.of(context).size.width * 0.07,
                      ),
                      InkWell(
                        onTap: () {
                          speak(_textController.text =
                              "Tolong buatkan aku rendang");
                        },
                        child: Image(
                          height: 100,
                          width: 90,
                          image: AssetImage('assets/images/rendang.jpeg'),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    indent: MediaQuery.of(context).size.width * 0.07,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
