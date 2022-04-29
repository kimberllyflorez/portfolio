import 'dart:convert';

class AboutMeModel {
  AboutMeModel({
    required this.description,
    required this.name,
    required this.title,
    required this.git,
    required this.picture,
  });

  String description;
  String name;
  String title;
  String git;
  String picture;

  factory AboutMeModel.fromJson(String str) =>
      AboutMeModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AboutMeModel.fromMap(Map<String, dynamic> json) => AboutMeModel(
        description: json["description"],
        name: json["name"],
        title: json["title"],
        git: json["git"],
        picture: json["picture"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "description": description,
        "name": name,
        "title": title,
        "git": git,
        "picture": picture,
      };
}
