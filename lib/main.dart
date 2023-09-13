import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/page_theme.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: PageTheme(
          child: StartScreen(),
        ),
      ),
    ),
  );
}
