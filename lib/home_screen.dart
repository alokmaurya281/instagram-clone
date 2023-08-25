import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
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
            body: Column(
              children: [
                const Center(
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
                const Divider(
                  color: Color.fromARGB(133, 158, 158, 158),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 8, right: 0),
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: const GradientBoxBorder(
                        width: 2,
                        gradient: LinearGradient(
                          colors: [Colors.pink, Colors.orange],
                        ),
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(99, 29, 27, 27),
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                      ),
                    ),
                  ),
                  title: const Text('username'),
                  subtitle: const Text('song if any'),
                  trailing: IconButton(
                    alignment: Alignment.topRight,
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/profile.jpg'),
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 0, right: 0),
                  leading: Wrap(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.heart),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.comment),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.paperPlane),
                      ),
                    ],
                  ),
                  title: const Icon(FontAwesomeIcons.ellipsis),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.bookmark),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("12 likes"),
                  ),
                ),
              ],
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
