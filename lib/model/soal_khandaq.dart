class SoalKhandaq {
  final String SoalKhandaqText;
  final List<Answer> answersList;

  SoalKhandaq(this.SoalKhandaqText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<SoalKhandaq> getSoalKhandaq() {
  List<SoalKhandaq> list = [];

  list.add(SoalKhandaq("Kapan terjadinya perang Khandaq?", [
    Answer("Romadhon Tahun 5 Hijriah", false),
    Answer("Syawal Tahun 5 Hijriah", true),
    Answer("Sya'ban Tahun 5 Hijriah", false),
    Answer("Dzulqo'dah Tahun 5 Hijriah", false),
  ]));
  list.add(
      SoalKhandaq("Berapa jumlah pasukan kaum muslimin dalam perang Khandaq?", [
    Answer("3000 Pasukan", true),
    Answer("4000 Pasukan", false),
    Answer("5000 Pasukan", false),
    Answer("2000 Pasukan", false),
  ]));
  list.add(SoalKhandaq(
      "Berapa jumlah pasukan sekutu kaum Musyrikin Quraisy dan kaum yahudi pada perang khandaq?",
      [
        Answer("13.000 Pasukan", false),
        Answer("12.000 Pasukan", false),
        Answer("20.000 Pasukan", false),
        Answer("10.000 Pasukan", true),
      ]));
  list.add(SoalKhandaq(
      "Siapa nama sahabat Nabi yang mempunyai ide untuk membuat parit pada perang Khandaq?",
      [
        Answer("Khalid Ibnu Walid", false),
        Answer("Zaid bin Said", false),
        Answer("Ali Bin Abi Thalib", false),
        Answer("Salman Al Farisy", true),
      ]));
  list.add(SoalKhandaq(
      "Siapa nama sahabat yang menggantikan Nabi pada saat terjadi peperangan Khandaq?",
      [
        Answer("Umar Bin Khattab", false),
        Answer("Bilal Bin Robah", false),
        Answer("Abdurrahman Bin Auf", false),
        Answer("Abdullah Bin Ummi Maktum", true),
      ]));
  return list;
}
