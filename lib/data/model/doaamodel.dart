class DOAA {
  String category;
  String count;
  String description;
  String reference;
  String content;

  DOAA({
    required this.category,
    required this.count,
    required this.description,
    required this.reference,
    required this.content,
  });

  Map<String, dynamic> toMap() => {
        "category": category,
        "count": count,
        "description": description,
        "reference": reference,
        "content": content,
      };

  factory DOAA.fromMap(Map<String, dynamic> json) => new DOAA(
        category: json["category"],
        count: json["count"],
        description: json["description"],
        reference: json["reference"],
        content: json["content"],
      );
}
