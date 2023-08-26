import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:instagram_clone/bottom_navigation_widget.dart';
import 'package:instagram_clone/post_widget.dart';
import 'package:instagram_clone/reel_widget.dart';
import 'package:instagram_clone/story_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: const Color.fromRGBO(1, 1, 1, 0),
              title: const Text(
                'Instagram',
                style: TextStyle(
                  color: Color.fromRGBO(1, 1, 1, 1),
                  fontFamily: "Billabong",
                  fontWeight: FontWeight.w500,
                  fontSize: 36,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.heart,
                    color: Color.fromRGBO(1, 1, 1, 1),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.facebookMessenger,
                    color: Color.fromRGBO(1, 1, 1, 1),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: const BottomNavigationWidget(),
            body: const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          StoryWidget(),
                          StoryWidget(),
                          StoryWidget(),
                          StoryWidget(),
                          StoryWidget(),
                          StoryWidget(),
                          StoryWidget(),
                          StoryWidget(),
                          StoryWidget(),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(133, 158, 158, 158),
                  ),
                  PostWidget(),
                  PostWidget(),
                  PostWidget(),
                  PostWidget(),
                  PostWidget(),
                  PostWidget(),
                  PostWidget(),
                  PostWidget(),
                  PostWidget(),
                  PostWidget(),
                  ReelWidget(),
                  ReelWidget(),
                  ReelWidget(),
                ],
              ),
            ),
          ),
          const Scaffold(
            body: Text('hhhh'),
          )
        ],
      ),
    );
  }
}
