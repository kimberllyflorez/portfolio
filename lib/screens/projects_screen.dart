import 'package:flutter/material.dart';
import 'package:portafolio_kimberlly/palette.dart';
import 'package:portafolio_kimberlly/repository/firebase_database_repository.dart';
import 'package:portafolio_kimberlly/widgets/widgets.dart';
import 'package:provider/provider.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/backgr_image.jpeg'),
                  fit: BoxFit.fill),
            ),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 230),
              color: Palette.backgroundColor.withOpacity(.7),
              child: const Text(
                'Work',
                style: TextStyle(
                    fontSize: 50,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        Positioned(
          top: 180,
          child: SingleChildScrollView(
            child: Container(
              height: 500,
              width: MediaQuery.of(context).size.width - 30,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Palette.backgroundColor3,
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 20),
                    itemCount: 5,
                    itemBuilder: (_, int index) {
                      final firebaseProvider =
                          Provider.of<FirebaseDatabaseRepository>(context,
                              listen: false);
                      final projectsData =
                          firebaseProvider.portfolioData?.projects;
                      return const ListWorks(
                        title: 'App Movie',
                        description:
                            'This is an application that allows you to search for movies.',
                      );
                    }),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
