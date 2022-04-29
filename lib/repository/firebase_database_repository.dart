import 'package:flutter/cupertino.dart';
import 'package:portafolio_kimberlly/models/about_me_model.dart';
import 'package:portafolio_kimberlly/models/portfolio_model.dart';
import 'package:portafolio_kimberlly/services/io_service.dart';

///implenets changenotifues
class FirebaseDatabaseRepository extends ChangeNotifier {
  final ioService = IOService();
  PortfolioData? portfolioData;

  FirebaseDatabaseRepository() {
    getProjectsData();
  }

  Future<AboutMeModel> getAboutMeData() async {
    final data = await ioService.get('/AppsProd/AboutMe.json');
    final aboutMe = AboutMeModel.fromJson(data.toString());
    return aboutMe;
  }

  Future getProjectsData() async {
    final data = await ioService.get('/AppsProd.json');
    portfolioData = PortfolioData.fromJson(data.toString());
    notifyListeners();
  }
}
