import 'dart:convert';

import 'package:portafolio_kimberlly/models/about_me_model.dart';
import 'package:portafolio_kimberlly/models/projects_model.dart';

class PortfolioModel {
  PortfolioModel({
    required this.aboutMe,
    required this.projects,
  });

  AboutMeModel aboutMe;
  List<ProjectElement> projects;

  factory PortfolioModel.fromJson(String str) =>
      PortfolioModel.fromMap(json.decode(str));

  factory PortfolioModel.fromMap(Map<String, dynamic> json) => PortfolioModel(
        aboutMe: AboutMeModel.fromMap(json["AboutMe"]),
        projects: List<ProjectElement>.from(
            json["projects"].map((x) => ProjectElement.fromMap(x))),
      );
}
