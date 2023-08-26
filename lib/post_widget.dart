import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(0),
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
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
          ),
          title: const Text('username'),
          subtitle: const Text('song if any'),
          trailing: Padding(
            padding: const EdgeInsets.all(8.0),
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
          contentPadding: const EdgeInsets.only(left: 0, right: 0),
          leading: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const FaIcon(FontAwesomeIcons.heart),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const FaIcon(FontAwesomeIcons.comment),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const FaIcon(FontAwesomeIcons.paperPlane),
                ),
              ),
            ],
          ),
          title: const Icon(FontAwesomeIcons.ellipsis),
          trailing: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: const FaIcon(FontAwesomeIcons.bookmark),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('12 likes'),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: RichText(
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "username  ",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                              style: TextStyle(color: Colors.black),
                              text:
                                  "hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
                        ],
                      ),
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
    );
  }
}
