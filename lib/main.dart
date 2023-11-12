import 'package:flutter/material.dart';
import 'package:quiz_task/presentation/home_page.dart';
import 'package:quiz_task/router/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GBL QUIZ APP TASK',
      initialRoute: HomePage.routeName,
      routes: routes,
    );
  }
}
