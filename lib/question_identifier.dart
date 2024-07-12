import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({super.key, required this.questionIndex, required this.isCorrectAnswer});
  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer ? const Color.fromARGB(255, 9, 113, 187) : Color.fromARGB(255, 10, 215, 160),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontFamily: AutofillHints.postalCode),
      ),
    );
  }
}
