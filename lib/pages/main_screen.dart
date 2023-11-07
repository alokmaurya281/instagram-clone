import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/home_screen.dart';
import 'package:instagram_clone/pages/auth_pages/add_post_page.dart';
import 'package:instagram_clone/pages/profile_page.dart';
import 'package:instagram_clone/pages/search_page.dart';
import 'package:instagram_clone/reels_screen.dart';

// ignore: must_be_immutable
class MainScreen extends StatefulWidget {
  int index;
  MainScreen({
    super.key,
    required this.index,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchPage(),
    const AddPostPage(),
    const ReelsScreen(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigation(),
      body: _widgetOptions.elementAt(widget.index),
    );
  }

  Container _bottomNavigation() {
    return Container(
      decoration: const BoxDecoration(),
      alignment: Alignment.center,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: BottomNavigationBar(
          currentIndex: widget.index,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedFontSize: 16,
          unselectedFontSize: 14,
          // fixedColor: Theme.of(context).colorScheme.primary,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Theme.of(context).colorScheme.primary,
          // elevation: 0,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: "Add Post",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/reels.svg',
                width: 20,
              ),
              label: "Reels",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      widget.index = index;
    });
  }
}
