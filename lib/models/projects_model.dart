import 'dart:convert';

class ProjectElement {
  ProjectElement({
    required this.description,
    required this.gitUrl,
    required this.images,
    required this.smallDescription,
    required this.title,
  });

  String description;
  String gitUrl;
  List<String> images;
  String smallDescription;
  String title;

  factory ProjectElement.fromJson(String str) => ProjectElement.fromMap(json.decode(str));

  factory ProjectElement.fromMap(Map<String, dynamic> json) => ProjectElement(
    description: json["description"],
    gitUrl: json["git_url"],
    images: List<String>.from(json["images"].map((x) => x)),
    smallDescription: json["smallDescription"],
    title: json["title"] == null ? null : json["title"],
  );
}
