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
      selectedIconTheme: const IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: color),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.art_track_outlined),
          label: 'Projects',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.three_p),
          label: 'About me',
        ),
      ],
      currentIndex: currentIndex,
      onTap: onTap,
    );
  }
}
