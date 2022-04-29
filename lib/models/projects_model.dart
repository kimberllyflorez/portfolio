
import 'dart:convert';

class Projects {
  Projects({
    required this.appMovie,
    required this.portafafolio,
  });

  AppMovie appMovie;
  AppMovie portafafolio;

  factory Projects.fromJson(String str) => Projects.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Projects.fromMap(Map<String, dynamic> json) => Projects(
    appMovie: AppMovie.fromMap(json["AppMovie"]),
    portafafolio: AppMovie.fromMap(json["Portafafolio"]),
  );

  Map<String, dynamic> toMap() => {
    "AppMovie": appMovie.toMap(),
    "Portafafolio": portafafolio.toMap(),
  };
}

class AppMovie {
  AppMovie({
    required this.images,
    required this.longDescription,
    required this.smallDescription,
    required this.title,
  });

  String images;
  String longDescription;
  String smallDescription;
  String title;

  factory AppMovie.fromJson(String str) => AppMovie.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AppMovie.fromMap(Map<String, dynamic> json) => AppMovie(
    images: json["images"],
    longDescription: json["longDescription"],
    smallDescription: json["smallDescription"],
    title: json["title"],
  );

  Map<String, dynamic> toMap() => {
    "images": images,
    "longDescription": longDescription,
    "smallDescription": smallDescription,
    "title": title,
  };
}
