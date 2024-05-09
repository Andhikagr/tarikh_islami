import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Sawiq extends StatelessWidget {
  const Sawiq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Perang Sawiq & Qarqarah",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: AnimatedTextKit(animatedTexts: [
                TyperAnimatedText(
                    'Buatlah ringkasan materi perang Sawiq & Qarqarah dengan tulisan arabic secara berkelompok, maksimal kelompok 3 orang',
                    textStyle: const TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 19, 17, 17),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    speed: const Duration(milliseconds: 100),
                    curve: Curves.linear),
              ]),
            )
          ],
        )));
  }
}
