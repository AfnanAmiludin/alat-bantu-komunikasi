import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:tugas_akhir/models/object.dart';
import 'package:tugas_akhir/models/sentence.dart';
import 'package:tugas_akhir/models/subject.dart';
import 'package:tugas_akhir/services/object_service.dart';

class Sentences extends StatefulWidget {
  const Sentences({super.key});

  @override
  State<Sentences> createState() => _SentencesState();
}

class _SentencesState extends State<Sentences> {
  final ExpansionTileController controller = ExpansionTileController();
  final _textController = TextEditingController();
  final FlutterTts _flutterTts = FlutterTts();
  late Future<SentencesModel> _sentence;

  void initState() {
    super.initState();
    _sentence = ObjectService.getAllSentence();
  }

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
                    height: MediaQuery.of(context).size.width * 2.1,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(24),
                      child: FutureBuilder(
                        future: _sentence,
                        builder:
                            (context, AsyncSnapshot<SentencesModel> snapshot) {
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
                                  var dataSubject = snapshot.data!.data[index];
                                  return InkWell(
                                    onTap: () {
                                      speak(dataSubject.sentence);
                                    },
                                    child: Image.network(
                                      dataSubject.imageUrl,
                                      height: 80,
                                      width: 70,
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
              ],
            ),
          ),
        ],
      )),
    );
  }
}
