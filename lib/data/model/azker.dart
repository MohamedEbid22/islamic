class Azker {
  String category;
  String count;
  String description;
  String reference;
  String content;

  Azker({
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

  factory Azker.fromMap(Map<String, dynamic> json) => new Azker(
        category: json["category"],
        count: json["count"],
        description: json["description"],
        reference: json["reference"],
        content: json["content"],
      );
}
