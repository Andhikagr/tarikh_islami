class SoalMutah {
  final String SoalMutahText;
  final List<Answer> answersList;

  SoalMutah(this.SoalMutahText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<SoalMutah> getSoalMutah() {
  List<SoalMutah> list = [];

  list.add(SoalMutah("Kapan terjadinya perang Mut'ah?", [
    Answer("Romadhon Tahun 8 Hijriah", false),
    Answer("Jumadal Ula Tahun 8 Hijriah", true),
    Answer("Jumadal Akhir Tahun 8 Hijriah", false),
    Answer("Syawal Tahun 8 Hijriah", false),
  ]));
  list.add(
      SoalMutah("Mu’tah adalah nama sebuah desa di daerah Balqa’ di wilayah?", [
    Answer("Syam", true),
    Answer("Tabuk", false),
    Answer("Yaman", false),
    Answer("Ethiopia", false),
  ]));
  list.add(SoalMutah("Dalam perang Mut'ah kaum muslimin melawan raja", [
    Answer("Albertus", false),
    Answer("Gregorius", false),
    Answer("Paulus", false),
    Answer("Hiroklius", true),
  ]));
  list.add(SoalMutah("Berapa jumlah kaum muslimin pada perang Mut'ah?", [
    Answer("3200 Pasukan", false),
    Answer("3350 pasukan", false),
    Answer("3250 pasukan", false),
    Answer("3000 pasukan", true),
  ]));
  list.add(SoalMutah(
      "Siapakah yang memimpin pasukan kaum muslimin di perang Mut'ah?", [
    Answer("Khalid Ibnu Walid", false),
    Answer("Said Bin Robi'", false),
    Answer("Thalhah Ibnu Jarrah", false),
    Answer("Zaid bin Hâritsah", true),
  ]));
  return list;
}
