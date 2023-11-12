import 'package:flutter/material.dart';
import 'package:quiz_task/constants/constants.dart';

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
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
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
                    const Column(
                      children: [
                        // Add Question here
                        Text(
                          'What is the capital of India? What is the capital of India? What is the capital of India?',
                          style: kMediumTextStyle,
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
                    const SizedBox(
                      height: 20,
                    ),

                    // Add an image containing the full width of the screen, but not the full height
                    // SizedBox(
                    //   width: double.infinity,
                    //   height: 200,
                    //   child: Image.asset(
                    //     'assets/your_image.jpg',
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),

                    Column(
                      children: [
                        RadioListTile(
                          title: const Text('Option A', style: kSmallTextStyle),
                          value: 0,
                          fillColor: MaterialStateProperty.all(Colors.white),
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value as int;
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text(
                            'Option B',
                            style: kSmallTextStyle,
                          ),
                          value: 1,
                          fillColor: MaterialStateProperty.all(Colors.white),
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value as int;
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text(
                            'Option C',
                            style: kSmallTextStyle,
                          ),
                          value: 2,
                          fillColor: MaterialStateProperty.all(Colors.white),
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value as int;
                            });
                          },
                        ),
                      ],
                    ),
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
