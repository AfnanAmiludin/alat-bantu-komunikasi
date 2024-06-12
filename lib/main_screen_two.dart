import 'package:flutter/material.dart';
import 'package:tugas_akhir/sentence.dart';
import 'package:tugas_akhir/speech.dart';
import 'package:tugas_akhir/wordToSentence.dart';

class MainScreenTwo extends StatefulWidget {
  const MainScreenTwo({super.key});

  @override
  State<MainScreenTwo> createState() => _MainScreenTwoState();
}

class _MainScreenTwoState extends State<MainScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff739CD2),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.67,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image(
                            image: AssetImage('assets/icons/awan.png'),
                            height: MediaQuery.of(context).size.width * 0.4,
                          )
                        ],
                      ),
                    )),
                    Positioned(
                        bottom: 1,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('assets/icons/awan.png'),
                                height: MediaQuery.of(context).size.width * 0.4,
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Speech()),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.158,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text('Objek')],
                                ),
                                height:
                                    MediaQuery.of(context).size.width * 0.11,
                                width: MediaQuery.of(context).size.width * 0.47,
                                decoration: BoxDecoration(
                                  color: Color(0xffC6DBF6),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                              right: MediaQuery.of(context).size.width * 0.14,
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Image(
                                  image: AssetImage('assets/icons/koala.png'),
                                  height: 75,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ToSentence()),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.16,
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text('Menyusun kata')],
                                ),
                                height:
                                    MediaQuery.of(context).size.width * 0.11,
                                width: MediaQuery.of(context).size.width * 0.47,
                                decoration: BoxDecoration(
                                  color: Color(0xffC6DBF6),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                              left: MediaQuery.of(context).size.width * 0.21,
                              bottom: MediaQuery.of(context).size.width * 0.001,
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Container(
                                child: Image(
                                  image: AssetImage('assets/icons/tupai2.png'),
                                  height: 80,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Sentences()),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.17,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text('Perintah')],
                                ),
                                height:
                                    MediaQuery.of(context).size.width * 0.11,
                                width: MediaQuery.of(context).size.width * 0.47,
                                decoration: BoxDecoration(
                                  color: Color(0xffC6DBF6),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                              right: MediaQuery.of(context).size.width * 0.15,
                              bottom: MediaQuery.of(context).size.width * 0.01,
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Image(
                                  image: AssetImage('assets/icons/harimau.png'),
                                  height: 75,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.9,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: MediaQuery.of(context).size.width * 0,
                          child: Image(
                              image: AssetImage('assets/icons/rumput.png'))),
                      Positioned(
                          left: MediaQuery.of(context).size.width * 0.24,
                          bottom: MediaQuery.of(context).size.width * 0,
                          child: Image(
                              image: AssetImage('assets/icons/rumput.png'))),
                      Positioned(
                          bottom: MediaQuery.of(context).size.width * 0,
                          left: MediaQuery.of(context).size.width * 0.47,
                          child: Image(
                              image: AssetImage('assets/icons/rumput.png'))),
                      Positioned(
                          bottom: MediaQuery.of(context).size.width * 0,
                          left: MediaQuery.of(context).size.width * 0.6,
                          child: Image(
                              image: AssetImage('assets/icons/rumput2.png'))),
                    ],
                  ),
                ),
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width * 0.59,
                  bottom: MediaQuery.of(context).size.width * 0,
                  child: Image(
                      image: AssetImage('assets/icons/jerapah.png'),
                      height: 350)),
            ],
          )
        ],
      )),
    );
  }
}
