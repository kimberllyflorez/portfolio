import 'package:flutter/material.dart';
import 'package:portafolio_kimberlly/palette.dart';

class Buttom extends StatelessWidget {
  final Function()? onTap;

  const Buttom({
    Key? key,
    this.onTap,
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
        child: const Text('aqui va link a git'),
      ),
      onTap: onTap,
    );
  }
}
