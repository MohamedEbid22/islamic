class Hadith {
  String key;
  String nameHadith;
  String textHadith;
  String explanationHadith;
  String translateNarrator;
  String audioHadith;

  Hadith(
      {required this.key,
      required this.nameHadith,
      required this.textHadith,
      required this.explanationHadith,
      required this.translateNarrator,
      required this.audioHadith});

  Map<String, dynamic> toMap() => {
        "key": key,
        "nameHadith": nameHadith,
        "textHadith": textHadith,
        "explanationHadith": explanationHadith,
        "translateNarrator": translateNarrator,
        "audioHadith": audioHadith,
      };

  factory Hadith.fromMap(Map<String, dynamic> json) => new Hadith(
        key: json["key"],
        nameHadith: json["nameHadith"],
        textHadith: json["textHadith"],
        explanationHadith: json["explanationHadith"],
        translateNarrator: json["translateNarrator"],
        audioHadith: json["audioHadith"],
      );
}
