import 'package:flutter/material.dart';
import 'package:portafolio_kimberlly/palette.dart';

class Buttom extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;

  const Buttom({
     Key? key,
    this.onTap,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Palette.backgroundColor2,
            borderRadius: BorderRadius.circular(15)),
        alignment: Alignment.center,
        width: 200,
        height: 50,
        child:  Text(buttonText),
      ),
      onTap: onTap,
    );
  }
}
