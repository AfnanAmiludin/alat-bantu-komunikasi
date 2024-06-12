import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'dart:ui';
import 'package:tugas_akhir/services/object_service.dart';
import 'package:tugas_akhir/models/object.dart';
import 'package:tugas_akhir/models/subject.dart';

class ToSentence extends StatefulWidget {
  const ToSentence({super.key});

  @override
  State<ToSentence> createState() => _ToSentenceState();
}

class _ToSentenceState extends State<ToSentence> {
  final ExpansionTileController controller = ExpansionTileController();
  final _textController = TextEditingController();
  final FlutterTts _flutterTts = FlutterTts();
  late Future<ObjectsModel> _object;
  late Future<SubjectsModel> _subject;
  final tts = [];
  final oneTts = [];

  speak(String text) async {
    await _flutterTts.setLanguage("id-ID");
    await _flutterTts.setPitch(10);
    await _flutterTts.speak(text);
  }

  @override
  void initState() {
    super.initState();
    _object = ObjectService.getAllObjects();
    _subject = ObjectService.getAllSubject();
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
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(24),
                          child: FutureBuilder(
                            future: _subject,
                            builder: (context,
                                AsyncSnapshot<SubjectsModel> snapshot) {
                              var state = snapshot.connectionState;
                              if (state != ConnectionState.done) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else {
                                if (snapshot.hasData) {
                                  return GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                    ),
                                    itemCount: snapshot.data!.data.length,
                                    itemBuilder: (context, index) {
                                      var dataSubject =
                                          snapshot.data!.data[index];
                                      return InkWell(
                                        onTap: () {
                                          speak(dataSubject.name);
                                          setState(() {
                                            tts.add([
                                              dataSubject.name,
                                              Image.network(
                                                dataSubject.imageUrl,
                                                height: 100,
                                                width: 90,
                                              ),
                                            ]);
                                            oneTts.add(dataSubject.name);
                                          });
                                        },
                                        child: Image.network(
                                          dataSubject.imageUrl,
                                          height: 100,
                                          width: 90,
                                        ),
                                      );
                                    },
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
                        )),
                    const SizedBox(height: 8),
                    Container(
                        color: Color(0xff9AC6FF).withOpacity(0.8),
                        height: MediaQuery.of(context).size.width * 0.96,
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(24),
                          child: FutureBuilder(
                            future: _object,
                            builder: (context,
                                AsyncSnapshot<ObjectsModel> snapshot) {
                              var state = snapshot.connectionState;
                              if (state != ConnectionState.done) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else {
                                if (snapshot.hasData) {
                                  return GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                    ),
                                    itemCount: snapshot.data!.data.length,
                                    itemBuilder: (context, index) {
                                      var dataObject =
                                          snapshot.data!.data[index];
                                      return InkWell(
                                        onTap: () {
                                          speak(dataObject.name);
                                          setState(() {
                                            tts.add([
                                              dataObject.name,
                                              Image.network(
                                                dataObject.imageUrl,
                                                height: 100,
                                                width: 90,
                                              ),
                                            ]);
                                            oneTts.add(dataObject.name);
                                          });
                                        },
                                        child: Image.network(
                                          dataObject.imageUrl,
                                          height: 100,
                                          width: 90,
                                        ),
                                      );
                                    },
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
                            child: item[1]),
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
