import 'package:flutter/material.dart';
import 'package:quiz_task/constants/constants.dart';
import 'package:quiz_task/presentation/question_card.dart';

import 'answer_card.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  static const routeName = '/quiz_page';

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int selectedOption = -1;

  @override
  Widget build(BuildContext context) {
    // Get.put(QuizController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Page'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.blueGrey,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              /// Top Header
              const Align(
                alignment: Alignment.topRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Question 1 of 10',
                      style: kSmallTextStyle,
                    ),
                    Text(
                      'Score: 20',
                      style: kSmallTextStyle,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              /// Question and Answer Segment
              Expanded(
                child: Column(
                  children: [
                    // Add Question here
                    const QuestionCard(),
                    const SizedBox(
                      height: 20,
                    ),

                    // Add Options here
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: AnswerCard(
                              currentIndex: index,
                              question: 'question',
                              isSelected: false,
                              selectedAnswerIndex: 0,
                              correctAnswerIndex: 0,
                            ),
                          );
                        }),
                  ],
                ),
              ),

              /// Footer
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: kMediumTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
