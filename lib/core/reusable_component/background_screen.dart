import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  Widget child;

  BackgroundScreen({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff00D2FF), Color(0xff3A7BD5)],
        ),
      ),
      child: child,
    );
  }
}
