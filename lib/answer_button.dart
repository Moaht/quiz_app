import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answer,
    required this.whenPressed,
  });

  final String answer;
  final void Function() whenPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: whenPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answer,
        textAlign: TextAlign.center,
      ),
    );
  }
}
