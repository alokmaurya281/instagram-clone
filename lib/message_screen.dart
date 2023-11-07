import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/add_note_widget.dart';
import 'package:instagram_clone/message_widget_user.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          child: const Row(
            children: [
              Text(
                'its_alok__m',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: FaIcon(
                  FontAwesomeIcons.chevronDown,
                  size: 16,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              child: const FaIcon(FontAwesomeIcons.squarePlus),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              child: const FaIcon(FontAwesomeIcons.penToSquare),
            ),
          )
        ],
      ),
      body: GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (details.delta.direction <= 0) {
            Navigator.pop(context);
          }
        },
        child: ListView(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: TextField(
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        hintText: 'Search',
                        fillColor: Color.fromRGBO(158, 158, 158, 0.465),
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Colors.grey,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide.none),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AddNoteWidget(),
                      AddNoteWidget(),
                      AddNoteWidget(),
                      AddNoteWidget(),
                      AddNoteWidget(),
                      AddNoteWidget(),
                      AddNoteWidget(),
                      AddNoteWidget(),
                      AddNoteWidget(),
                      AddNoteWidget(),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Text(
                    'Messages',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  trailing: GestureDetector(
                    child: const Text(
                      'Requests',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
                MessageWidgetUser(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
