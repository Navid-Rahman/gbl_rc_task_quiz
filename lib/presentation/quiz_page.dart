import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_task/application/quizess_cubit.dart';
import 'package:quiz_task/constants/constants.dart';
import 'package:quiz_task/main.dart';
import 'package:quiz_task/presentation/question_card.dart';

import '../models/quiz_model.dart';
import 'answer_card.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  static const routeName = '/quiz_page';

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int selectedOption = -1;

  int selectedQuestionIndex = 0;
  int questionIndex = 0;
  int score = 0;

  // Initialize the cubit
  final quizessCubit = QuizessCubit();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    quizessCubit.fetchQuizData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Page'),
        backgroundColor: kAppBarColor,
      ),
      body: BlocBuilder<QuizessCubit, QuizessState>(
        builder: (context, state) {
          print('Current state: $state'); // Add this line for debugging
          if (state is QuizessLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is QuizessLoaded) {
            return buildQuizPage(state.questionList);
          }
          if (state is QuizessError) {
            return const Center(
              child: Text('API Error'),
            );
          }
          return const Center(
            child: Text('Error'),
          );
        },
      ),
    );
  }
}

Widget buildQuizPage(
  List<Question> questionList,
) {
  return SingleChildScrollView(
    child: Container(
      decoration: const BoxDecoration(
        color: kAppBarColor,
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
            Column(
              children: [
                // Add Question here
                const QuestionCard(
                  question: 'Question 1',
                ),

                const SizedBox(
                  height: 10,
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
                          selectedAnswerIndex: 1,
                          correctAnswerIndex: 1,
                        ),
                      );
                    }),
              ],
            ),

            /// Footer
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: kButtonColor,
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
