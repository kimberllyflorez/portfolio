
import 'package:flutter/material.dart';
import 'package:portafolio_kimberlly/palette.dart';
import 'package:portafolio_kimberlly/widgets/card_items.dart';
import 'package:portafolio_kimberlly/widgets/widgets.dart';

class DetailsApps extends StatelessWidget {
  const DetailsApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
         backgroundColor: Palette.backgroundColor2),
      body: Column(
        children: const [
          CardItemWidget(
              title: 'App movie',
              smalldescription: 'about the movie',
              longdescription: 'long descriptio',
          ),
          ImageWidget(),
          Spacer(),
          Buttom(),
        ],
      )
    );
  }
}



class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: FadeInImage(
              placeholder: const AssetImage('assets/no-image.jpg'),
              image: const AssetImage('assets/no-image.jpg'),
              fit: BoxFit.cover,
              height: 180,
              width: MediaQuery.of(context).size.width * .4,
            ),
          ),
          const SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: FadeInImage(
              placeholder: const AssetImage('assets/no-image.jpg'),
              image: const AssetImage('assets/no-image.jpg'),
              fit: BoxFit.cover,
              height: 180,
              width: MediaQuery.of(context).size.width * .4,
            ),
          ),
        ],
    );
  }
}