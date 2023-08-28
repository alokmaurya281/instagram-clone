import 'package:flutter/material.dart';
import 'package:instagram_clone/home_screen.dart';
import 'package:instagram_clone/login.dart';
import 'package:instagram_clone/message_screen.dart';
import 'package:instagram_clone/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/messages': (context) => MessageScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
