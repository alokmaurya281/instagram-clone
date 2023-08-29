import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/add_screen.dart';
import 'package:instagram_clone/add_story_widget.dart';
import 'package:instagram_clone/bottom_navigation_widget.dart';
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
  List<bool> posts = [true, false, true, true, true, false];

  Future<bool> getData() async {
    return true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void navigateToMessageScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const MessageScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                navigateToMessageScreen();
              },
              child: const FaIcon(FontAwesomeIcons.facebookMessenger),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AddStoryWidget(),
                  for (int i = 0; i < 10; i++) StoryWidget(),
                ],
              ),
            ),
            // for (int i = 0; i < posts.length; i++)
            //   posts[i] ? ReelWidget() : PostWidget(),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: posts.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return posts[index] ? ReelWidget() : PostWidget();
              },
            )
          ],
        ),
      ),
    );
  }
}
