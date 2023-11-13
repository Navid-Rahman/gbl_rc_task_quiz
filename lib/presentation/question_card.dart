import 'package:flutter/material.dart';

import '../constants/constants.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: kCardBorderColor,
          width: 2,
        ),
      ),
      child: const Column(
        children: [
          // Add Question here
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '1. What is the capital of India? What is the capital of India? What is the capital of India?',
              style: kMediumTextStyle,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          // Add question marks here
          Align(
            alignment: Alignment.topRight,
            child: Text(
              '10 points',
              style: kSmallTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
