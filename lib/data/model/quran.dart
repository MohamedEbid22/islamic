class Quran {
  int id = 0;
  String name;
  String words;
  String letters;
  String type;
  String audoi;
  String sowraa;
  String num;

  Quran({
    required this.id,
    required this.name,
    required this.words,
    required this.letters,
    required this.type,
    required this.audoi,
    required this.sowraa,
    required this.num,
  });

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "words": words,
        "letters": letters,
        "type": type,
        "audoi": audoi,
        "sowraa": sowraa,
        "num": num,
      };

  factory Quran.fromMap(Map<String, dynamic> json) => new Quran(
        id: json["id"],
        name: json["name"],
        words: json["words"],
        letters: json["letters"],
        type: json["type"],
        audoi: json["audoi"],
        sowraa: json["sowraa"],
        num: json["num"],
      );
}
