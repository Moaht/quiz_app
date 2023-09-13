import 'package:flutter/material.dart';

class PageTheme extends StatelessWidget {
  const PageTheme({super.key, required this.child});

  final Widget child;

  @override
  Widget build(context) {
    return Container(
      color: const Color.fromARGB(255, 50, 200, 255),
      child: child,
    );
  }
}
