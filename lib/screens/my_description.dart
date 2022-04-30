import 'package:flutter/material.dart';
import 'package:portafolio_kimberlly/models/about_me_model.dart';
import 'package:portafolio_kimberlly/repository/firebase_database_repository.dart';
import 'package:portafolio_kimberlly/utils/url_utils.dart';
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
        padding: const EdgeInsets.all(20.0),
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final firebaseProvider =
        Provider.of<FirebaseDatabaseRepository>(context, listen: false);
    final aboutMeData = firebaseProvider.portfolioData?.aboutMe;
    if (aboutMeData != null) {
      return Column(
        children: [
          _buildHeader(context, aboutMeData),
          CardItemWidget(
            longDescription: aboutMeData.description,
            title: aboutMeData.title,
          ),
          const Spacer(),
          Buttom(
            onTap: () {
              final Uri _url = Uri(
                scheme: 'mailto',
                path: aboutMeData.email,
                query:
                    'subject=${aboutMeData.mailSubject}&body=${aboutMeData.mailMessage}',
              );
              UrlUtils.openUrl(_url);
            },
            buttonText: 'Contact',
          ),
        ],
      );
    }
    return const Text('No data');
  }

  _buildHeader(BuildContext context, AboutMeModel aboutMeModel) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.width * 0.35,
            child: ClipOval(
              child: FadeInImage(
                placeholder: const AssetImage('assets/no_profile.png'),
                image: NetworkImage(aboutMeModel.picture),
                fit: BoxFit.fitWidth,
                height: MediaQuery.of(context).size.height * 0.35,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  aboutMeModel.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  aboutMeModel.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
