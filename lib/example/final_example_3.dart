import 'dart:ui';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';
import 'package:tugas_akhir/models/object.dart';
import 'package:tugas_akhir/services/object_service.dart';

class Speech extends StatefulWidget {
  const Speech({super.key});

  @override
  State<Speech> createState() => _SpeechState();
}

class _SpeechState extends State<Speech> {
  final ExpansionTileController controller = ExpansionTileController();
  final _textController = TextEditingController();
  final FlutterTts _flutterTts = FlutterTts();
  late Future<ObjectsModel> _object;

  speak(String text) async {
    await _flutterTts.setLanguage("id-ID");
    await _flutterTts.setPitch(10);
    await _flutterTts.speak(text);
  }

  @override
  void initState() {
    super.initState();
    _object = ObjectService.getAllObjects();
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
                    height: MediaQuery.of(context).size.width * 0.96,
                    color: Color(0xffF3E58C).withOpacity(0.8),
                    child: SingleChildScrollView(
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(24),
                        child: FutureBuilder(
                          future: _object,
                          builder:
                              (context, AsyncSnapshot<ObjectsModel> snapshot) {
                            var state = snapshot.connectionState;
                            if (state != ConnectionState.done) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            } else {
                              if (snapshot.hasData) {
                                return ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    var payment = snapshot.data!.data[index];
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
                                                speak("saya");
                                              },
                                              child: Image(
                                                height: 100,
                                                width: 90,
                                                image: AssetImage(
                                                    'assets/images/aku.png'),
                                              ),
                                            ),
                                            Divider(
                                              indent: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.07,
                                            ),
                                          ],
                                        ),
                                        // InkWell(
                                        //   onTap: () {
                                        //     Navigator.pushNamed(
                                        //         context, detailPayment.url,
                                        //         arguments: payment);
                                        //   },
                                        //   child: listItem(payment),
                                        // );
                                      ],
                                    );
                                  },
                                  itemCount: snapshot.data!.data.length,
                                );
                              } else if (snapshot.hasError) {
                                return Center(
                                  child: Text(
                                    snapshot.error.toString(),
                                  ),
                                );
                              } else {
                                return Text('');
                              }
                            }
                          },
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
                                  },
                                  child: Image(
                                    height: 100,
                                    width: 90,
                                    image: AssetImage('assets/images/air.jpeg'),
                                  ),
                                ),
                                Divider(
                                  indent:
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "ayam");
                                  },
                                  child: Image(
                                    height: 100,
                                    width: 90,
                                    image:
                                        AssetImage('assets/images/ayam.jpeg'),
                                  ),
                                ),
                                Divider(
                                  indent:
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "ayam goreng");
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
                              indent: MediaQuery.of(context).size.width * 0.07,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "bakso");
                                  },
                                  child: Image(
                                    height: 100,
                                    width: 90,
                                    image:
                                        AssetImage('assets/images/bakso.jpeg'),
                                  ),
                                ),
                                Divider(
                                  indent:
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "buaya");
                                  },
                                  child: Image(
                                    height: 100,
                                    width: 90,
                                    image:
                                        AssetImage('assets/images/buaya.jpeg'),
                                  ),
                                ),
                                Divider(
                                  indent:
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "harimau");
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
                              indent: MediaQuery.of(context).size.width * 0.07,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "kelinci");
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
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "mie");
                                  },
                                  child: Image(
                                    height: 100,
                                    width: 90,
                                    image: AssetImage('assets/images/mie.jpeg'),
                                  ),
                                ),
                                Divider(
                                  indent:
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "mie ayam");
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
                              indent: MediaQuery.of(context).size.width * 0.07,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "nasi goreng");
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
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "panda");
                                  },
                                  child: Image(
                                    height: 100,
                                    width: 90,
                                    image:
                                        AssetImage('assets/images/panda.jpeg'),
                                  ),
                                ),
                                Divider(
                                  indent:
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "rendang");
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
                              indent: MediaQuery.of(context).size.width * 0.07,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "singa");
                                  },
                                  child: Image(
                                    height: 100,
                                    width: 90,
                                    image:
                                        AssetImage('assets/images/singa.jpeg'),
                                  ),
                                ),
                                Divider(
                                  indent:
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "susu");
                                  },
                                  child: Image(
                                    height: 100,
                                    width: 90,
                                    image:
                                        AssetImage('assets/images/susu.jpeg'),
                                  ),
                                ),
                                Divider(
                                  indent:
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                InkWell(
                                  onTap: () {
                                    speak(_textController.text = "ular");
                                  },
                                  child: Image(
                                    height: 100,
                                    width: 90,
                                    image:
                                        AssetImage('assets/images/ular.jpeg'),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
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
