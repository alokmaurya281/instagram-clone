import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(size: 28),
        unselectedIconTheme: const IconThemeData(size: 18),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          const BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.squarePlus), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/reels.svg',
                height: 18,
                width: 18,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.circleUser), label: ''),
        ],
      ),
    );
  }
}