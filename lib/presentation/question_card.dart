import 'package:flutter/material.dart';

import '../constants/constants.dart';

class QuestionCard extends StatelessWidget {
  final String question;

  const QuestionCard({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: kCardColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: kCardBorderColor,
              width: 2,
            ),
          ),
          child: Column(
            children: [
              Column(
                children: [
                  // Add Question here
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      question,
                      style: kMediumTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // Add question marks here
                  const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '10 points',
                      style: kSmallTextStyle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: kCardBorderColor,
              width: 2,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://images.unsplash.com/photo-1699694927472-46a4fcf68973?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
    );
  }
}
