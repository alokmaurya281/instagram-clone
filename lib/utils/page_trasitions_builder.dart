import 'package:flutter/material.dart';

class CustomPageTransitionsBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // if (route.settings.isInitialRoute) {
    //   return child; // No animation for initial route
    // }

    const beginOffset = Offset(1.0, 0.0); // Start off-screen to the right
    const endOffset = Offset.zero; // End at the center

    const curve = Curves.easeInOut;
    var tween = Tween(begin: beginOffset, end: endOffset).chain(CurveTween(curve: curve));

    return SlideTransition(
      position: animation.drive(tween),
      child: child,
    );
  }
}