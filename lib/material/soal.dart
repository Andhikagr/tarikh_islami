import 'package:flutter/material.dart';
import 'package:tarikh_islami/file/hijrah_nabi.dart';
import 'package:tarikh_islami/file/perang_badr.dart';
import 'package:tarikh_islami/file/perang_khandaq.dart';
import 'package:tarikh_islami/file/perang_mutah.dart';
import 'package:tarikh_islami/file/perang_sawiq.dart';
import 'package:tarikh_islami/file/perang_uhud.dart';

class Soal extends StatefulWidget {
  const Soal({super.key});

  @override
  _SoalState createState() => _SoalState();
}

class _SoalState extends State<Soal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Soal Evaluasi',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.only(top: 25),
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5),
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Hijrah()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/soal.png',
                                scale: 9,
                              ),
                              const Padding(padding: EdgeInsets.only(top: 20)),
                              Text(
                                "Hijrah Nabi",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: 17),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Badr()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade300,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/soal.png',
                                  scale: 9,
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 20)),
                                Text(
                                  "Perang Badr",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: 17),
                                )
                              ],
                            ),
                          )),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Sawiq()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade300,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/soal.png',
                                  scale: 9,
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 20)),
                                Text(
                                  "Sawiq & Qarqarah",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: 17),
                                )
                              ],
                            ),
                          )),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Uhud()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade300,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/soal.png',
                                  scale: 9,
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 20)),
                                Text(
                                  "Perang Uhud",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: 17),
                                )
                              ],
                            ),
                          )),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Khandaq()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade300,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/soal.png',
                                  scale: 9,
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 20)),
                                Text(
                                  "Perang Khandaq",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: 17),
                                )
                              ],
                            ),
                          )),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Mutah()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade300,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/soal.png',
                                  scale: 9,
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 20)),
                                Text(
                                  "Perang Mut'ah",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: 17),
                                )
                              ],
                            ),
                          )),
                    ]))));
  }
}
