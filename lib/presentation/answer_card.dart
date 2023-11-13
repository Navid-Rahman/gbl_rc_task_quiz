import 'package:flutter/material.dart';
import 'package:quiz_task/constants/constants.dart';

class AnswerCard extends StatelessWidget {
  final String question;
  final bool isSelected;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int currentIndex;
  const AnswerCard(
      {super.key,
      required this.question,
      required this.isSelected,
      this.correctAnswerIndex,
      this.selectedAnswerIndex,
      required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = correctAnswerIndex == selectedAnswerIndex;
    bool isWrongAnswer = selectedAnswerIndex != null && !isCorrectAnswer;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 70,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: isCorrectAnswer
              ? Colors.green.withOpacity(0.2)
              : isWrongAnswer
                  ? Colors.red.withOpacity(0.2)
                  : kCardColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isCorrectAnswer
                ? Colors.green.withOpacity(0.9)
                : isWrongAnswer
                    ? Colors.red.withOpacity(0.9)
                    : kCardBorderColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
