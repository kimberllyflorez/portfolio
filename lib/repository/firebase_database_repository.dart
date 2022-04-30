import 'package:flutter/cupertino.dart';
import 'package:portafolio_kimberlly/models/portfolio_model.dart';
import 'package:portafolio_kimberlly/services/io_service.dart';

class FirebaseDatabaseRepository extends ChangeNotifier {
  final ioService = IOService();
  PortfolioModel? portfolioData;

  FirebaseDatabaseRepository() {
    getProjectsData();
  }

  Future getProjectsData() async {
    final data = await ioService.get('/AppsProd.json');
    portfolioData = PortfolioModel.fromJson(data.toString());
    notifyListeners();
  }
}
