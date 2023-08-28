import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class AddStoryWidget extends StatelessWidget {
  const AddStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 8, bottom: 8, top: 8),
      child: Column(
        children: [
          Container(
            width: 77,
            height: 77,
            decoration: BoxDecoration(
              border: const GradientBoxBorder(
                width: 3,
                gradient: LinearGradient(
                  colors: [Colors.pink, Colors.orange],
                ),
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(99, 29, 27, 27),
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(149, 175, 175, 175),
                child: FaIcon(
                  FontAwesomeIcons.circleUser,
                  color: Color.fromARGB(149, 175, 175, 175),
                  size: 62,
                ),
              ),
            ),
          ),
          const Text("Your Story")
        ],
      ),
    );
  }
}
