import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  final String error;
  const NotFoundPage({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text(error.toString()),
      ),
    );
  }
}
