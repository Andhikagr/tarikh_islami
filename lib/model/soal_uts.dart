class SoalUts {
  final String SoalUtsText;
  final List<Answer> answersList;

  SoalUts(this.SoalUtsText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<SoalUts> getSoalUts() {
  List<SoalUts> list = [];

  list.add(SoalUts("Kapan terjadinya perang badr?", [
    Answer("15 Romadhon 2 Hijriah", false),
    Answer("17 Romadhon 2 Hijriah", true),
    Answer("11 Romadhon 2 Hijriah", false),
    Answer("20 Romadhon 2 Hijriah", false),
  ]));
  list.add(SoalUts(
      "Setibanya di Madinah, Rasulullah mendirikan masjid di Madinah yaitu?", [
    Answer("Masjid Quba", true),
    Answer("Masjidil Aqsa", false),
    Answer("Masjidil Haram", false),
    Answer("Masjid Nabawi", false),
  ]));
  list.add(SoalUts(
      "Siapa nama sahabat yang menggantikan Nabi pada saat terjadi peperangan Khandaq?",
      [
        Answer("Umar Bin Khattab", false),
        Answer("Bilal Bin Robah", false),
        Answer("Abdurrahman Bin Auf", false),
        Answer("Abdullah Bin Ummi Maktum", true),
      ]));
  list.add(SoalUts("Perang Uhud berada di sebelah?", [
    Answer("Selatan kota Madinah", false),
    Answer("Timur kota Madinah", false),
    Answer("Barat kota Madinah", false),
    Answer("Utara kota Madinah", true),
  ]));
  list.add(SoalUts("Berapa jumlah kaum muslimin pada perang Mut'ah?", [
    Answer("3200 Pasukan", false),
    Answer("3350 pasukan", false),
    Answer("3250 pasukan", false),
    Answer("3000 pasukan", true),
  ]));
  return list;
}
