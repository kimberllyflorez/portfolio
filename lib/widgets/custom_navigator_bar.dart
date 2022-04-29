import 'package:flutter/material.dart';
import 'package:portafolio_kimberlly/palette.dart';

class CustomButtomNavigator extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onTap;

  const CustomButtomNavigator({
    Key? key,
    required this.onTap,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Palette.backgroundColor3;

    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      backgroundColor: Palette.backgroundColor2,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.art_track_outlined, color: color),
          label: 'Works',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.three_p, color: color),
          label: 'about me',
        ),
      ],
      currentIndex: currentIndex,
      onTap: onTap,
    );
  }
}
