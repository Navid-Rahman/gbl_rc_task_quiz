import 'package:flutter/material.dart';
import 'package:quiz_task/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GBL Quiz App Task'),
        backgroundColor: kAppBarColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: kAppBarColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Welcome to GBL Quiz App Task',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 20),
            // Set of guidelines or additional widgets
            const Text(
              'Guideline 1: Your guideline text here',
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              'Guideline 2: Your guideline text here',
              style: TextStyle(color: Colors.white),
            ),
            // Add more guidelines or widgets as needed

            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: kButtonColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/quiz_page');
              },
              child: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
