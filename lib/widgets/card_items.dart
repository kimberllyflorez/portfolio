import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portafolio_kimberlly/palette.dart';

class CardItemWidget extends StatelessWidget {
  final String title;
  final String? smallDescription;
  final String? longDescription;

  const CardItemWidget({
    Key? key,
    required this.title,
    this.smallDescription,
    this.longDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          if (smallDescription != null)
            Text(
              smallDescription ?? '',
              style: const TextStyle(
                color: Colors.black54,
                height: 1.6,
              ) ,
            ),
          const SizedBox(height: 10),
          Text(
            longDescription ?? '',
            style: const TextStyle(
              color: Colors.black54,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
