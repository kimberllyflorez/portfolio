import 'dart:convert';

class AboutMeModel {
  AboutMeModel({
    required this.description,
    required this.name,
    required this.title,
    required this.picture,
    required this.email,
    required this.mailSubject,
    required this.mailMessage,
  });

  String description;
  String name;
  String title;
  String email;
  String picture;
  String mailSubject;
  String mailMessage;

  factory AboutMeModel.fromJson(String str) =>
      AboutMeModel.fromMap(json.decode(str));

  factory AboutMeModel.fromMap(Map<String, dynamic> json) => AboutMeModel(
        description: json["description"],
        name: json["name"],
        title: json["title"],
        email: json["email"],
        mailSubject: json["mail_subject"],
        mailMessage: json["mail_message"],
        picture: json["picture"] ?? '',
      );
}
