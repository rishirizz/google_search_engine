
import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  final Widget smallScreen;
  final Widget largeScreen;
  const ResponsiveScreen(
      {required this.smallScreen, required this.largeScreen, super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 768) {
          return smallScreen;
        } else {
          return largeScreen;
        }
      },
    );
  }
}
