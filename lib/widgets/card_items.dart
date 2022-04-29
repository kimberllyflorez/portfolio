import 'package:flutter/material.dart';
import 'package:portafolio_kimberlly/palette.dart';

class CardItemWidget extends StatelessWidget {
  final String title;
  final String smalldescription;
  final String? longdescription;

  const CardItemWidget(
      {Key? key,
      required this.title,
      required this.smalldescription,
      this.longdescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Palette.backgroundColor3,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            smalldescription,
            style: const TextStyle(color: Colors.black54),
          ),
          const SizedBox(height: 10),
          Text(
            longdescription ?? '',
            style: const TextStyle(
              color: Colors.black54,
            ),

          ),
        ],
      ),
    );
  }
}


