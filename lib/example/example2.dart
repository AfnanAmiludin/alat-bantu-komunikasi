import 'dart:ui';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

class Speech extends StatefulWidget {
  const Speech({super.key});

  @override
  State<Speech> createState() => _SpeechState();
}

class _SpeechState extends State<Speech> {
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
            "Speech",
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
            child: Column(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.width * 0.62,
                    child: SingleChildScrollView(
                      child: ExpansionTile(
                        collapsedShape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        shape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        backgroundColor: Color(0xffE9E8E8),
                        collapsedBackgroundColor: Color(0xffE9E8E8),
                        controller: controller,
                        title: const Text('Subjek'),
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(24),
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        speak("saya");
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image:
                                            AssetImage('assets/images/aku.png'),
                                      ),
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        speak("kamu");
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image: AssetImage(
                                            'assets/images/kamu.png'),
                                      ),
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        speak("dimana");
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image: AssetImage(
                                            'assets/images/dimana.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: 8),
                Container(
                    height: MediaQuery.of(context).size.width * 0.62,
                    child: SingleChildScrollView(
                      child: ExpansionTile(
                        collapsedShape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        shape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        title: const Text('Predikat'),
                        collapsedBackgroundColor: Color(0xffE9E8E8),
                        backgroundColor: Color(0xffE9E8E8),
                        children: [
                          Builder(
                            builder: (BuildContext context) {
                              return ListView(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          speak("ingin");
                                        },
                                        child: Image(
                                          height: 100,
                                          width: 90,
                                          image: AssetImage(
                                              'assets/images/ingin.png'),
                                        ),
                                      ),
                                      Divider(
                                        indent:
                                            MediaQuery.of(context).size.width *
                                                0.07,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          speak("makan");
                                        },
                                        child: Image(
                                          height: 100,
                                          width: 90,
                                          image: AssetImage(
                                              'assets/images/makan.png'),
                                        ),
                                      ),
                                      Divider(
                                        indent:
                                            MediaQuery.of(context).size.width *
                                                0.07,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          speak("minum");
                                        },
                                        child: Image(
                                          height: 100,
                                          width: 90,
                                          image: AssetImage(
                                              'assets/images/minum.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    indent: MediaQuery.of(context).size.width *
                                        0.07,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          speak(
                                              _textController.text = "tolong");
                                        },
                                        child: Image(
                                          height: 100,
                                          width: 90,
                                          image: AssetImage(
                                              'assets/images/tolong.png'),
                                        ),
                                      ),
                                      Divider(
                                        indent:
                                            MediaQuery.of(context).size.width *
                                                0.07,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          speak(_textController.text =
                                              "mendapatkan");
                                        },
                                        child: Image(
                                          height: 100,
                                          width: 90,
                                          image: AssetImage(
                                              'assets/images/mendapatkan.png'),
                                        ),
                                      ),
                                      Divider(
                                        indent:
                                            MediaQuery.of(context).size.width *
                                                0.07,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          speak(
                                              _textController.text = "selesai");
                                        },
                                        child: Image(
                                          height: 100,
                                          width: 90,
                                          image: AssetImage(
                                              'assets/images/selesai.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    indent: MediaQuery.of(context).size.width *
                                        0.07,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          speak(
                                              _textController.text = "datang");
                                        },
                                        child: Image(
                                          height: 100,
                                          width: 90,
                                          image: AssetImage(
                                              'assets/images/datang.png'),
                                        ),
                                      ),
                                      Divider(
                                        indent:
                                            MediaQuery.of(context).size.width *
                                                0.07,
                                      ),
                                    ],
                                  )
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: 8),
                Container(
                    height: MediaQuery.of(context).size.width * 0.67,
                    child: SingleChildScrollView(
                      child: ExpansionTile(
                        collapsedShape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        shape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        title: const Text('Objek'),
                        backgroundColor: Color(0xffE9E8E8),
                        collapsedBackgroundColor: Color(0xffE9E8E8),
                        children: [
                          Builder(
                            builder: (BuildContext context) {
                              return ListView(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            speak(_textController.text = "air");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/air.jpeg'),
                                          ),
                                        ),
                                        Divider(
                                          indent: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.07,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            speak(
                                                _textController.text = "ayam");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/ayam.jpeg'),
                                          ),
                                        ),
                                        Divider(
                                          indent: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.07,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            speak(_textController.text =
                                                "ayam goreng");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/ayamgoreng.jpeg'),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            speak(
                                                _textController.text = "bakso");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/bakso.jpeg'),
                                          ),
                                        ),
                                        Divider(
                                          indent: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.07,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            speak(
                                                _textController.text = "buaya");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/buaya.jpeg'),
                                          ),
                                        ),
                                        Divider(
                                          indent: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.07,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            speak(_textController.text =
                                                "harimau");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/harimau.jpeg'),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            speak(_textController.text =
                                                "kelinci");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/kelinci.jpeg'),
                                          ),
                                        ),
                                        Divider(
                                          indent: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.07,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            speak(_textController.text = "mie");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/mie.jpeg'),
                                          ),
                                        ),
                                        Divider(
                                          indent: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.07,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            speak(_textController.text =
                                                "mie ayam");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/mieayam.jpeg'),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            speak(_textController.text =
                                                "nasi goreng");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/nasigoreng.jpeg'),
                                          ),
                                        ),
                                        Divider(
                                          indent: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.07,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            speak(
                                                _textController.text = "panda");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/panda.jpeg'),
                                          ),
                                        ),
                                        Divider(
                                          indent: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.07,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            speak(_textController.text =
                                                "rendang");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/rendang.jpeg'),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            speak(
                                                _textController.text = "singa");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/singa.jpeg'),
                                          ),
                                        ),
                                        Divider(
                                          indent: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.07,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            speak(
                                                _textController.text = "susu");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/susu.jpeg'),
                                          ),
                                        ),
                                        Divider(
                                          indent: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.07,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            speak(
                                                _textController.text = "ular");
                                          },
                                          child: Image(
                                            height: 100,
                                            width: 90,
                                            image: AssetImage(
                                                'assets/images/ular.jpeg'),
                                          ),
                                        ),
                                      ],
                                    )
                                  ]);
                            },
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ],
      )),
    );
  }
}
