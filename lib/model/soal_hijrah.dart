class SoalHijrah {
  final String SoalHijrahText;
  final List<Answer> answersList;

  SoalHijrah(this.SoalHijrahText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<SoalHijrah> getSoalHijrah() {
  List<SoalHijrah> list = [];

  list.add(
      SoalHijrah("Perpindahan Nabi Muhammad dari Mekah ke Madinah disebut?", [
    Answer("Dakwah", false),
    Answer("Hijrah", true),
    Answer("Jihad", false),
    Answer("Isra Mi'raj", false),
  ]));
  list.add(SoalHijrah(
      "Setibanya di Madinah, Rasulullah mendirikan masjid di Madinah yaitu?", [
    Answer("Masjid Quba", true),
    Answer("Masjidil Aqsa", false),
    Answer("Masjidil Haram", false),
    Answer("Masjid Nabawi", false),
  ]));
  list.add(SoalHijrah(
      "Penduduk Madinah yang menolong umat Islam yang berhijrah ke Madinah disebut kaum?",
      [
        Answer("Mujahidin", false),
        Answer("Muhajirin", false),
        Answer("Persia", false),
        Answer("Anshar", true),
      ]));
  list.add(SoalHijrah(
      "Imam Bukhari menyebutkan, yang pertama kali berangkat hijrah ke kota Madinah adalah?",
      [
        Answer("Umar Bin Khattab", false),
        Answer("Utsman Bin Affan", false),
        Answer("Abdurrahman Bin Auf", false),
        Answer("Mush'ab Bin Umair", true),
      ]));
  list.add(SoalHijrah(
      "Sedangkan Ibnu Ishaq dan Ibnu Sa'ad menyebutkan, yang pertama kali berangkat hijrah ke kota Madinah adalah?",
      [
        Answer("Abu Salamah Bin Al Asad", true),
        Answer("Mush'ab Bin Umair", false),
        Answer("Bilal Bin Robah", false),
        Answer("Khalid Ibnu Walid", false),
      ]));
  return list;
}
