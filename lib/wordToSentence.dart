import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'dart:ui';

class ToSentence extends StatefulWidget {
  const ToSentence({super.key});

  @override
  State<ToSentence> createState() => _ToSentenceState();
}

class _ToSentenceState extends State<ToSentence> {
  final ExpansionTileController controller = ExpansionTileController();
  final _textController = TextEditingController();
  final FlutterTts _flutterTts = FlutterTts();

  final tts = [];
  final oneTts = [];

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
              "Word To Sentence",
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
                                          image: AssetImage(
                                              'assets/icons/awan.png'),
                                          height: 180,
                                        )
                                      ],
                                    ),
                                  )),
                              Positioned(
                                  top: MediaQuery.of(context).size.width * 0.27,
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'assets/icons/awan.png'),
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
                            height: MediaQuery.of(context).size.width * 1.05,
                            child: Stack(
                              children: [
                                Positioned(
                                    bottom: MediaQuery.of(context).size.width *
                                        0.22,
                                    child: Image(
                                        image: AssetImage(
                                            'assets/icons/rumput.png'))),
                                Positioned(
                                    left: MediaQuery.of(context).size.width *
                                        0.24,
                                    bottom: MediaQuery.of(context).size.width *
                                        0.22,
                                    child: Image(
                                        image: AssetImage(
                                            'assets/icons/rumput.png'))),
                                Positioned(
                                    bottom: MediaQuery.of(context).size.width *
                                        0.22,
                                    left: MediaQuery.of(context).size.width *
                                        0.47,
                                    child: Image(
                                        image: AssetImage(
                                            'assets/icons/rumput.png'))),
                                Positioned(
                                    bottom: MediaQuery.of(context).size.width *
                                        0.22,
                                    left:
                                        MediaQuery.of(context).size.width * 0.6,
                                    child: Image(
                                        image: AssetImage(
                                            'assets/icons/rumput2.png'))),
                              ],
                            ),
                          ),
                          Positioned(
                              left: MediaQuery.of(context).size.width * 0.59,
                              bottom: MediaQuery.of(context).size.width * 0.22,
                              child: Image(
                                  image: AssetImage('assets/icons/jerapah.png'),
                                  height: 350)),
                        ],
                      )),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.width * 1.7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.width * 0.90,
                        color: Color(0xffF3E58C).withOpacity(0.8),
                        child: SingleChildScrollView(
                          child: Container(
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
                                        setState(() {
                                          tts.add([
                                            "saya",
                                            AssetImage('assets/images/aku.png')
                                          ]);
                                          oneTts.add("saya");
                                        });
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
                                        setState(() {
                                          tts.add([
                                            "kamu",
                                            AssetImage('assets/images/kamu.png')
                                          ]);
                                          oneTts.add("kamu");
                                        });
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
                                        setState(() {
                                          tts.add([
                                            "dimana",
                                            AssetImage(
                                                'assets/images/dimana.png')
                                          ]);
                                          oneTts.add("dimana");
                                        });
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
                                Divider(
                                  indent:
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        speak("ingin");
                                        setState(() {
                                          tts.add([
                                            "ingin",
                                            AssetImage(
                                                'assets/images/ingin.png')
                                          ]);
                                          oneTts.add("ingin");
                                        });
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
                                        setState(() {
                                          tts.add([
                                            "makan",
                                            AssetImage(
                                                'assets/images/makan.png')
                                          ]);
                                          oneTts.add("makan");
                                        });
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
                                        setState(() {
                                          tts.add([
                                            "minum",
                                            AssetImage(
                                                'assets/images/minum.png')
                                          ]);
                                          oneTts.add("minum");
                                        });
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
                                  indent:
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        speak(_textController.text = "tolong");
                                        setState(() {
                                          tts.add([
                                            "tolong",
                                            AssetImage(
                                                'assets/images/tolong.png')
                                          ]);
                                          oneTts.add("tolong");
                                        });
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
                                        setState(() {
                                          tts.add([
                                            "mendapatkan",
                                            AssetImage(
                                                'assets/images/mendapatkan.png')
                                          ]);
                                          oneTts.add("mendapatkan");
                                        });
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
                                        speak(_textController.text = "selesai");
                                        setState(() {
                                          tts.add([
                                            "selesai",
                                            AssetImage(
                                                'assets/images/selesai.png')
                                          ]);
                                          oneTts.add("selesai");
                                        });
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
                              ],
                            ),
                          ),
                        )),
                    const SizedBox(height: 8),
                    Container(
                        color: Color(0xff9AC6FF).withOpacity(0.8),
                        height: MediaQuery.of(context).size.width * 0.96,
                        child: SingleChildScrollView(
                          child: Container(
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
                                        speak(_textController.text = "air");
                                        setState(() {
                                          tts.add([
                                            "air",
                                            AssetImage('assets/images/air.jpeg')
                                          ]);
                                          oneTts.add("air");
                                        });
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image: AssetImage(
                                            'assets/images/air.jpeg'),
                                      ),
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        speak(_textController.text = "ayam");
                                        setState(() {
                                          tts.add([
                                            "ayam",
                                            AssetImage(
                                                'assets/images/ayam.jpeg')
                                          ]);
                                          oneTts.add("ayam");
                                        });
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image: AssetImage(
                                            'assets/images/ayam.jpeg'),
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
                                            "ayam goreng");
                                        setState(() {
                                          tts.add([
                                            "ayam goreng",
                                            AssetImage(
                                                'assets/images/ayamgoreng.jpeg')
                                          ]);
                                          oneTts.add("ayam goreng");
                                        });
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
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        speak(_textController.text = "bakso");
                                        setState(() {
                                          tts.add([
                                            "bakso",
                                            AssetImage(
                                                'assets/images/bakso.jpeg')
                                          ]);
                                          oneTts.add("bakso");
                                        });
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image: AssetImage(
                                            'assets/images/bakso.jpeg'),
                                      ),
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        speak(_textController.text = "buaya");
                                        setState(() {
                                          tts.add([
                                            "buaya",
                                            AssetImage(
                                                'assets/images/buaya.jpeg')
                                          ]);
                                          oneTts.add("buaya");
                                        });
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image: AssetImage(
                                            'assets/images/buaya.jpeg'),
                                      ),
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        speak(_textController.text = "harimau");
                                        setState(() {
                                          tts.add([
                                            "harimau",
                                            AssetImage(
                                                'assets/images/harimau.jpeg')
                                          ]);
                                          oneTts.add("harimau");
                                        });
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
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        speak(_textController.text = "kelinci");
                                        setState(() {
                                          tts.add([
                                            "kelinci",
                                            AssetImage(
                                                'assets/images/kelinci.jpeg')
                                          ]);
                                          oneTts.add("kelinci");
                                        });
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image: AssetImage(
                                            'assets/images/kelinci.jpeg'),
                                      ),
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        speak(_textController.text = "mie");
                                        setState(() {
                                          tts.add([
                                            "mie",
                                            AssetImage('assets/images/mie.jpeg')
                                          ]);
                                          oneTts.add("mie");
                                        });
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image: AssetImage(
                                            'assets/images/mie.jpeg'),
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
                                            _textController.text = "mie ayam");
                                        setState(() {
                                          tts.add([
                                            "mie ayam",
                                            AssetImage(
                                                'assets/images/mieayam.jpeg')
                                          ]);
                                          oneTts.add("mie ayam");
                                        });
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
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        speak(_textController.text =
                                            "nasi goreng");
                                        setState(() {
                                          tts.add([
                                            "nasi goreng",
                                            AssetImage(
                                                'assets/images/nasigoreng.jpeg')
                                          ]);
                                          oneTts.add("nasi goreng");
                                        });
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image: AssetImage(
                                            'assets/images/nasigoreng.jpeg'),
                                      ),
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        speak(_textController.text = "panda");
                                        setState(() {
                                          tts.add([
                                            "panda",
                                            AssetImage(
                                                'assets/images/panda.jpeg')
                                          ]);
                                          oneTts.add("panda");
                                        });
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image: AssetImage(
                                            'assets/images/panda.jpeg'),
                                      ),
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        speak(_textController.text = "rendang");
                                        setState(() {
                                          tts.add([
                                            "rendang",
                                            AssetImage(
                                                'assets/images/rendang.jpeg')
                                          ]);
                                          oneTts.add("rendang");
                                        });
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
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        speak(_textController.text = "singa");
                                        setState(() {
                                          tts.add([
                                            "singa",
                                            AssetImage(
                                                'assets/images/singa.jpeg')
                                          ]);
                                          oneTts.add("singa");
                                        });
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image: AssetImage(
                                            'assets/images/singa.jpeg'),
                                      ),
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        speak(_textController.text = "susu");
                                        setState(() {
                                          tts.add([
                                            "susu",
                                            AssetImage(
                                                'assets/images/susu.jpeg')
                                          ]);
                                          oneTts.add("susu");
                                        });
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image: AssetImage(
                                            'assets/images/susu.jpeg'),
                                      ),
                                    ),
                                    Divider(
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        speak(_textController.text = "ular");
                                        setState(() {
                                          tts.add([
                                            "ular",
                                            AssetImage(
                                                'assets/images/ular.jpeg')
                                          ]);
                                          oneTts.add("ular");
                                        });
                                      },
                                      child: Image(
                                        height: 100,
                                        width: 90,
                                        image: AssetImage(
                                            'assets/images/ular.jpeg'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                    Divider(
                      indent: MediaQuery.of(context).size.width * 0.07,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
        bottomSheet: Container(
          height: MediaQuery.of(context).size.width * 0.23,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Color(0xff739CD2),
          ),
          child: Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (var item in tts)
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            speak(_textController.text = item[0]);
                          },
                          child: Image(
                            height: 100,
                            width: 90,
                            image: item[1],
                          ),
                        ),
                        Positioned(
                          right: 0.0,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                tts.remove(item);
                                oneTts.removeWhere(
                                    (element) => element == item[0]);
                              });
                            },
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                radius: 14.0,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.close, color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  Container(
                      child: InkWell(
                    onTap: () async {
                      speak(oneTts.join(' '));
                      print(oneTts);
                    },
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 60,
                    ),
                  ))
                ],
              )),
        ));
  }
}
