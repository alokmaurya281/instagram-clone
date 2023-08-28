import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class MessageWidgetUser extends StatelessWidget {
  const MessageWidgetUser({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        children: [
          Container(
            width: 56,
            height: 56,
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
        ],
      ),
      title: Text('Anuj Maurya'),
      subtitle: Text('recent message overview simple'),
      trailing: GestureDetector(
        child: Icon(Icons.camera_alt_outlined),
      ),
    );
  }
}
