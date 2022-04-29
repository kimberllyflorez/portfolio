import 'package:flutter/material.dart';
import 'package:portafolio_kimberlly/models/about_me_model.dart';
import 'package:portafolio_kimberlly/models/projects_model.dart';
import 'package:portafolio_kimberlly/repository/firebase_database_repository.dart';
import 'package:portafolio_kimberlly/widgets/card_items.dart';
import 'package:portafolio_kimberlly/widgets/widgets.dart';
import 'package:provider/provider.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final firebaseProvider =
        Provider.of<FirebaseDatabaseRepository>(context, listen: false);
    final aboutMeData = firebaseProvider.portfolioData?.aboutMe;
    if(aboutMeData != null){
      return Column(
        children: [
          _buildHeader(context, aboutMeData),
          CardItemWidget(
            smalldescription: aboutMeData.description,
            title: aboutMeData.title,
          ),
          const Spacer(),
          Buttom(
            onTap: () {
              ///launchUrl(gitUrl);
            },
          ),
        ],
      );
    }
    return Text('No data');
  }

  _buildHeader(BuildContext context, AboutMeModel aboutMeModel) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          width: MediaQuery.of(context).size.width * 0.35,
          height: 180,
          child: CircleAvatar(
            backgroundImage: NetworkImage(aboutMeModel.picture),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                aboutMeModel.name,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(aboutMeModel.title),
            ],
          ),
        ),
      ],
    );
  }
}
