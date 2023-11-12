import 'package:flutter/cupertino.dart';
import 'package:quiz_task/presentation/home_page.dart';
import 'package:quiz_task/presentation/quiz_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  HomePage.routeName: (context) => const HomePage(),
  QuizPage.routeName: (context) => const QuizPage(),
};
