// To parse this JSON data, do
//
//     final portfolioData = portfolioDataFromMap(jsonString);

import 'dart:convert';

import 'package:portafolio_kimberlly/models/about_me_model.dart';
import 'package:portafolio_kimberlly/models/projects_model.dart';

class PortfolioData {
  PortfolioData({
    required this.aboutMe,
    required this.projects,
  });

  AboutMeModel aboutMe;
  Projects projects;

  factory PortfolioData.fromJson(String str) => PortfolioData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PortfolioData.fromMap(Map<String, dynamic> json) => PortfolioData(
    aboutMe: AboutMeModel.fromMap(json["AboutMe"]),
    projects: Projects.fromMap(json["projects"]),
  );

  Map<String, dynamic> toMap() => {
    "AboutMe": aboutMe.toMap(),
    "projects": projects.toMap(),
  };
}
