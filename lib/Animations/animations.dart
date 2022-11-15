import 'package:flutter/material.dart';

class MyCustomPageTransition extends PageRouteBuilder {
  final Widget enterWidget;

  MyCustomPageTransition(this.enterWidget)
      : super(
            opaque: false,
            pageBuilder: (context, animation, secondaryAnimation) =>
                enterWidget,
            transitionDuration: Duration(milliseconds: 1500),
            reverseTransitionDuration: Duration(milliseconds: 1500),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              animation = CurvedAnimation(
                  parent: animation,
                  curve: Curves.fastLinearToSlowEaseIn,
                  reverseCurve: Curves.fastOutSlowIn);
              return ScaleTransition(
                  scale: animation, alignment: Alignment(0.0, 0.5),
              child: child,);
            });
}
