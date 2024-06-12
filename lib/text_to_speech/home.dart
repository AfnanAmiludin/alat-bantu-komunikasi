import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeech extends StatefulWidget {
  const TextToSpeech({super.key});

  @override
  State<TextToSpeech> createState() => _TextToSpeechState();
}

class _TextToSpeechState extends State<TextToSpeech> {
  // final TextEditingController _textEditingController = TextEditingController();
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
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Container(
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
                          oneTts.removeWhere((element) => element == item[0]);
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
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ExpansionTile(
              title: const Text('Predikat'),
              children: <Widget>[
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
                                speak("Semut");
                                setState(() {
                                  tts.add([
                                    "Semut",
                                    AssetImage('assets/images/minum.jpeg')
                                  ]);
                                  oneTts.add("semut");
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/minum.jpeg'),
                              ),
                            ),
                            Divider(
                              indent: 15,
                            ),
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Gajah",
                                    AssetImage('assets/images/minum.jpeg')
                                  ]);
                                  oneTts.add("Gajah");
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/minum.jpeg'),
                              ),
                            ),
                            Divider(
                              indent: 15,
                            ),
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Aku Mencoba",
                                    AssetImage('assets/images/makan.jpeg')
                                  ]);
                                  oneTts.add("semut");
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/makan.jpeg'),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Aku Mencoba",
                                    AssetImage('assets/images/minum.jpeg')
                                  ]);
                                  oneTts.add("semut");
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/makan.jpeg'),
                              ),
                            ),
                            Divider(
                              indent: 15,
                            ),
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Aku Mencoba",
                                    AssetImage('assets/images/minum.jpeg')
                                  ]);
                                  oneTts.add("semut");
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/makan.jpeg'),
                              ),
                            ),
                            Divider(
                              indent: 15,
                            ),
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                tts.add("Gajah");
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/makan.jpeg'),
                              ),
                            )
                          ],
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            ExpansionTile(
              title: const Text('Predikat'),
              children: <Widget>[
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
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Aku Mencoba",
                                    AssetImage('assets/images/minum.jpeg')
                                  ]);
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/minum.jpeg'),
                              ),
                            ),
                            Divider(
                              indent: 15,
                            ),
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Aku Mencoba",
                                    AssetImage('assets/images/minum.jpeg')
                                  ]);
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/minum.jpeg'),
                              ),
                            ),
                            Divider(
                              indent: 15,
                            ),
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Aku Mencoba",
                                    AssetImage('assets/images/makan.jpeg')
                                  ]);
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/makan.jpeg'),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Aku Mencoba",
                                    AssetImage('assets/images/minum.jpeg')
                                  ]);
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/makan.jpeg'),
                              ),
                            ),
                            Divider(
                              indent: 15,
                            ),
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Aku Mencoba",
                                    AssetImage('assets/images/minum.jpeg')
                                  ]);
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/makan.jpeg'),
                              ),
                            ),
                            Divider(
                              indent: 15,
                            ),
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                tts.add("Gajah");
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/makan.jpeg'),
                              ),
                            )
                          ],
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            ExpansionTile(
              title: const Text('Predikat'),
              children: <Widget>[
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
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Aku Mencoba",
                                    AssetImage('assets/images/minum.jpeg')
                                  ]);
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/minum.jpeg'),
                              ),
                            ),
                            Divider(
                              indent: 15,
                            ),
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Aku Mencoba",
                                    AssetImage('assets/images/minum.jpeg')
                                  ]);
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/minum.jpeg'),
                              ),
                            ),
                            Divider(
                              indent: 15,
                            ),
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Aku Mencoba",
                                    AssetImage('assets/images/makan.jpeg')
                                  ]);
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/makan.jpeg'),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Aku Mencoba",
                                    AssetImage('assets/images/minum.jpeg')
                                  ]);
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/makan.jpeg'),
                              ),
                            ),
                            Divider(
                              indent: 15,
                            ),
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                setState(() {
                                  tts.add([
                                    "Aku Mencoba",
                                    AssetImage('assets/images/minum.jpeg')
                                  ]);
                                });
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/makan.jpeg'),
                              ),
                            ),
                            Divider(
                              indent: 15,
                            ),
                            InkWell(
                              onTap: () {
                                speak(_textController.text = "Gajah");
                                tts.add("Gajah");
                              },
                              child: Image(
                                height: 100,
                                width: 90,
                                image: AssetImage('assets/images/makan.jpeg'),
                              ),
                            )
                          ],
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
