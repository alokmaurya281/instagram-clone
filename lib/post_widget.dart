import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:readmore/readmore.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 8),
            horizontalTitleGap: 8,
            minVerticalPadding: 0,
            leading: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                border: const GradientBoxBorder(
                  width: 2,
                  gradient: LinearGradient(
                    colors: [Colors.pink, Colors.orange],
                  ),
                ),
                borderRadius: BorderRadius.circular(45),
              ),
              child: Container(
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(99, 29, 27, 27),
                  ),
                  borderRadius: BorderRadius.circular(45),
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ),
            ),
            title: const Text(
              'username',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            subtitle: const Text(
              'song if any',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                onTap: () {},
                child: const FaIcon(FontAwesomeIcons.ellipsisVertical),
              ),
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
            contentPadding:
                const EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 0),
            leading: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 0, left: 8, right: 8),
                  child: GestureDetector(
                    onTap: () {},
                    child: const FaIcon(FontAwesomeIcons.heart),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 0, left: 8, right: 8),
                  child: GestureDetector(
                    onTap: () {},
                    child: const FaIcon(FontAwesomeIcons.comment),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 0, left: 8, right: 8),
                  child: GestureDetector(
                    onTap: () {},
                    child: const FaIcon(FontAwesomeIcons.paperPlane),
                  ),
                ),
              ],
            ),
            title: const Icon(FontAwesomeIcons.ellipsis),
            trailing: Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 0, left: 8, right: 8),
              child: GestureDetector(
                onTap: () {},
                child: const FaIcon(FontAwesomeIcons.bookmark),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('12 likes'),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: ReadMoreText(
                        "hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
                        trimCollapsedText: '...Show more',
                        trimExpandedText: ' show less',
                        trimLength: 70,
                        colorClickableText: Colors.grey,
                        moreStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                        trimMode: TrimMode.Length,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'View all 36 comments',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Text(
                        '26 minutes ago .',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2, left: 4),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'See translation',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
