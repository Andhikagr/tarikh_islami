class ModelMateri {
  int? id;
  String? topik;
  String? isi;

  ModelMateri(this.id, this.topik, this.isi);

  ModelMateri.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    topik = json['topik'];
    isi = json['isi'];
  }
}
