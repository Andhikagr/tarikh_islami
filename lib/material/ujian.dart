import 'package:flutter/material.dart';
import 'package:tarikh_islami/key/uas.dart';
import 'package:tarikh_islami/key/uts.dart';

class Ujian extends StatefulWidget {
  const Ujian({super.key});

  @override
  _UjianState createState() => _UjianState();
}

class _UjianState extends State<Ujian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ujian',
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
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Uts()));
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
                                'assets/UTS.png',
                                scale: 22,
                              ),
                              const Padding(padding: EdgeInsets.only(top: 1)),
                              Text(
                                "UTS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: 23),
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
                                    builder: (context) => const Uas()));
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
                                  'assets/UAS.png',
                                  scale: 22,
                                ),
                                const Padding(padding: EdgeInsets.only(top: 1)),
                                Text(
                                  "UAS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: 23),
                                )
                              ],
                            ),
                          )),
                    ]))));
  }
}
