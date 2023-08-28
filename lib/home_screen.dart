import 'package:flutter/material.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:instagram_clone/add_screen.dart';
import 'package:instagram_clone/add_story_widget.dart';
import 'package:instagram_clone/bottom_navigation_widget.dart';
import 'package:instagram_clone/feed_screen.dart';
import 'package:instagram_clone/message_screen.dart';
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
    return PageView(
      controller: PageController(
        initialPage: 0,
      ),
      children: [
        FeedScreen(),
        MessageScreen(),
        AddScreen(),
      ],
    );
  }
}
