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
      child: selectedAnswerIndex != null
          // if one option is chosen
          ? Container(
              height: 70,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isCorrectAnswer
                      ? const Color(0xFF00A74A)
                      : isWrongAnswer
                          ? const Color(0xFFE02020)
                          : const Color(0xFFC1D2E9),
                  width: 2,
                ),
              ),
            )
          // if no option is chosen
          : Container(
              height: 70,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: kCardBorderColor,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        question,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    isCorrectAnswer
                        ? buildCorrectIcon()
                        : isWrongAnswer
                            ? buildWrongIcon()
                            : const SizedBox.shrink(),
                  ],
                ),
              ),
            ),
    );
  }
}

Widget buildCorrectIcon() {
  return const CircleAvatar(
    radius: 15,
    backgroundColor: Color(0xFF00A74A),
    child: Icon(
      Icons.check,
      color: Colors.white,
    ),
  );
}

Widget buildWrongIcon() {
  return const CircleAvatar(
    radius: 15,
    backgroundColor: Color(0xFFE02020),
    child: Icon(
      Icons.close,
      color: Colors.white,
    ),
  );
}
