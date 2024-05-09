class SoalUhud {
  final String SoalUhudText;
  final List<Answer> answersList;

  SoalUhud(this.SoalUhudText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<SoalUhud> getSoalUhud() {
  List<SoalUhud> list = [];

  list.add(SoalUhud("Kapan terjadinya perang Uhud?", [
    Answer("Bulan Dzulhijjah Tahun 3 Hijriah", false),
    Answer("Bulan Syawal Tahun 3 Hijriah", true),
    Answer("Bulan Romadhon Tahun 3 Hijriah", false),
    Answer("Bulan Sya'ban Tahun 3 Hijriah", false),
  ]));
  list.add(SoalUhud("Siapakah nama paman Nabi yang meninggal di perang uhud?", [
    Answer("Hamzah Bin 'Abdul Mutholib", true),
    Answer("Ali Bin Abu Tholib", false),
    Answer("Abu Thalhah", false),
    Answer("Sa'ad Ibnu Waqqash", false),
  ]));
  list.add(SoalUhud("Berapa jumlah pasukan Musyrikin Quraisy?", [
    Answer("2000 Pasukan", false),
    Answer("4000 Pasukan", false),
    Answer("2500 Pasukan", false),
    Answer("3000 Pasukan", true),
  ]));
  list.add(
      SoalUhud("Berapa jumlah kaum muslimin yang terbunuh di perang uhud?", [
    Answer("60 Syuhada", false),
    Answer("80 Syuhada", false),
    Answer("90 Syuhada", false),
    Answer("70 Syuhada", true),
  ]));
  list.add(SoalUhud("Perang Uhud berada di sebelah?", [
    Answer("Selatan kota Madinah", false),
    Answer("Timur kota Madinah", false),
    Answer("Barat kota Madinah", false),
    Answer("Utara kota Madinah", true),
  ]));
  return list;
}
