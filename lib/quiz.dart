import 'package:flutter/material.dart';
import 'package:quiz_app/page_theme.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  late Widget activeScreen = StartScreen(switchScreen);
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(
        onSelectAnswer: answerSelector,
      );
    });
  }

  void answerSelector(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = const ResultsScreen();
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: PageTheme(
          child: activeScreen,
        ),
      ),
    );
  }
}
