import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portafolio_kimberlly/models/projects_model.dart';
import 'package:portafolio_kimberlly/palette.dart';
import 'package:portafolio_kimberlly/utils/url_utils.dart';
import 'package:portafolio_kimberlly/widgets/card_items.dart';
import 'package:portafolio_kimberlly/widgets/widgets.dart';

class DetailsApps extends StatelessWidget {
  const DetailsApps({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProjectElement project =
        ModalRoute.of(context)?.settings.arguments as ProjectElement;

    return Scaffold(
      appBar: AppBar(elevation: 5, backgroundColor: Palette.backgroundColor2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CardItemWidget(
            title: project.title,
            longDescription: project.description,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.8,
            child: ImageWidget(
              imageList: project.images,
            ),
          ),
          const Spacer(),
          Buttom(
            buttonText: 'Go to Git',
            onTap: () {
              final uri = Uri.parse(project.gitUrl);
              UrlUtils.openUrl(uri);
            },
          ),
          const SizedBox(height: 15)
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  final List<String> imageList;

  const ImageWidget({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageList.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: FadeInImage(
              placeholder: const AssetImage('assets/port_no_image.png'),
              image: NetworkImage(imageList[index]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
