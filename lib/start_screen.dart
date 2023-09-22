import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.quizState, {super.key});

  final void Function() quizState;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 140,
          ),
          Image.asset(
            'assets/images/light-bulb.png',
            width: 300,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Quiz App!",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 60),
          FilledButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Color.fromARGB(255, 75, 160, 255),
              ),
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
              ),
            ),
            onPressed: () {
              quizState();
            },
            child: const Text("Let's go!"),
          ),
        ],
      ),
    );
  }
}
