import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';

class WordToSentence extends StatefulWidget {
  const WordToSentence({super.key});

  @override
  State<WordToSentence> createState() => _WordToSentenceState();
}

class _WordToSentenceState extends State<WordToSentence> {
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
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          centerTitle: true,
          title: Text(
            "Home",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          backgroundColor: Colors.amber,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ExpansionTile(
              controller: controller,
              title: const Text('Subjek'),
              children: <Widget>[
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
                              speak(_textController.text = "Gajah");
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
                  ),
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
              title: const Text('Objek'),
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
