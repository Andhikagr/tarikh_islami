import 'package:flutter/material.dart';
import 'package:tarikh_islami/model/soal_mutah.dart';

class Mutah extends StatefulWidget {
  const Mutah({super.key});

  @override
  State<Mutah> createState() => _MutahState();
}

class _MutahState extends State<Mutah> {
  List<SoalMutah> quizList = getSoalMutah();
  int currentSoalMutahIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(children: [
          const Text(
            "Soal Evaluasi Materi Perang Mut'ah",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          _quizWidget(),
          _answerList(),
          _nextButton(),
        ]),
      ),
    );
  }

  _quizWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(padding: EdgeInsets.only(top: 10)),
        Text(
          "Soal ${currentSoalMutahIndex + 1}/${quizList.length.toString()}",
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            quizList[currentSoalMutahIndex].SoalMutahText,
            style: const TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: quizList[currentSoalMutahIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 40,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: isSelected ? Colors.deepOrange : Colors.white,
          foregroundColor: isSelected ? Colors.black : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
          }
          setState(() {
            selectedAnswer = answer;
          });
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuiz = false;
    if (currentSoalMutahIndex == quizList.length - 1) {
      isLastQuiz = true;
    }
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 40,
      child: ElevatedButton(
        child: Text(isLastQuiz ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          if (isLastQuiz) {
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            setState(() {
              selectedAnswer = null;
              currentSoalMutahIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;
    if (score > quizList.length * 0.6) {
      isPassed = true;
    }
    String title = isPassed ? "Passed" : "Failed";
    return AlertDialog(
        title: Text(
          title + " | Score is $score",
          style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
        ),
        content: ElevatedButton(
          child: const Text(
            "Mulai Lagi",
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            Navigator.pop(context);
            setState(() {
              currentSoalMutahIndex = 0;
              score = 0;
              selectedAnswer = null;
            });
          },
        ));
  }
}
