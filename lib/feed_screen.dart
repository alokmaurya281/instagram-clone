import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/add_screen.dart';
import 'package:instagram_clone/add_story_widget.dart';
import 'package:instagram_clone/bottom_navigation_widget.dart';
import 'package:instagram_clone/message_screen.dart';
import 'package:instagram_clone/post_widget.dart';
import 'package:instagram_clone/reel_widget.dart';
import 'package:instagram_clone/story_widget.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  Future<bool> getData() async {
    return true;
  }

  void navigateToMessageScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return MessageScreen();
        },
      ),
    );
  }

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
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: GestureDetector(
                    onTap: () {
                      navigateToMessageScreen();
                    },
                    child: FaIcon(FontAwesomeIcons.facebookMessenger),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: const BottomNavigationWidget(),
            body: FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
                return GestureDetector(
                  onHorizontalDragUpdate: (details) {
                    if (details.delta.direction > 0) {
                      Navigator.pushNamed(context, '/messages');
                    } else {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AddScreen(),
                        ),
                      );
                    }
                  },
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                AddStoryWidget(),
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
                          endIndent: 0,
                          indent: 0,
                          height: 0,
                          // thickness: 0.5,
                          color: Color.fromARGB(133, 158, 158, 158),
                        ),
                        PostWidget(),
                        PostWidget(),
                        ReelWidget(),
                        PostWidget(),
                        ReelWidget(),
                        PostWidget(),
                        PostWidget(),
                        PostWidget(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
