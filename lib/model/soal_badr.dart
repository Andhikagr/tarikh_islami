class SoalBadr {
  final String SoalBadrText;
  final List<Answer> answersList;

  SoalBadr(this.SoalBadrText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<SoalBadr> getSoalBadr() {
  List<SoalBadr> list = [];

  list.add(SoalBadr("Kapan terjadinya perang badr?", [
    Answer("15 Romadhon 2 Hijriah", false),
    Answer("17 Romadhon 2 Hijriah", true),
    Answer("11 Romadhon 2 Hijriah", false),
    Answer("20 Romadhon 2 Hijriah", false),
  ]));
  list.add(SoalBadr("Berapa jumlah pasukan kaum muslimin dalam perang badr?", [
    Answer("313 Pasukan", true),
    Answer("314 Pasukan", false),
    Answer("413 Pasukan", false),
    Answer("414 Pasukan", false),
  ]));
  list.add(SoalBadr("Berapa jumlah pasukan Musyrikin Quraisy?", [
    Answer("1010 Pasukan", false),
    Answer("960 Pasukan", false),
    Answer("990 Pasukan", false),
    Answer("950 Pasukan", true),
  ]));
  list.add(SoalBadr("Berapa jumlah kaum muslimin yang syahid?", [
    Answer("11 Syuhada", false),
    Answer("13 Syuhada", false),
    Answer("12 Syuhada", false),
    Answer("14 Syuhada", true),
  ]));
  list.add(SoalBadr(
      "Berapa jumlah kaum Musyrikin Quraisy yang mati pada perang badr?", [
    Answer("50 Orang", false),
    Answer("60 Orang", false),
    Answer("80 Orang", false),
    Answer("70 Orang", true),
  ]));
  return list;
}
