import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class StoryWidget extends StatefulWidget {
  const StoryWidget({super.key});

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
          ),
          const Text("Alok Maurya")
        ],
      ),
    );
  }
}
