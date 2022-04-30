import 'package:flutter/material.dart';
import 'package:portafolio_kimberlly/palette.dart';
import 'package:portafolio_kimberlly/screens/screens.dart';
import 'package:portafolio_kimberlly/widgets/custom_navigator_bar.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final List<Widget> _widgetOptions = <Widget>[
      Projects(),
      MyDescription(),
    ];
    return Scaffold(
      backgroundColor: Palette.backgroundColor2,
      body: _widgetOptions[_currentIndex],
      bottomNavigationBar: CustomButtomNavigator(
        currentIndex: _currentIndex,
        onTap: _onTapBottomBar,
      ),
    );
  }

  _onTapBottomBar(index) async {
    setState(() {
      _currentIndex = index;
    });
  }
}
