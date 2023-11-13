import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:quiz_task/application/quizess_cubit.dart';
import 'package:quiz_task/presentation/home_page.dart';
import 'package:quiz_task/router/routes.dart';

final Logger logger = Logger();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => QuizessCubit(
            logger: logger,
          ),
        ),
      ],
      child: MaterialApp(
        title: 'GBL QUIZ APP TASK',
        initialRoute: HomePage.routeName,
        routes: routes,
      ),
    );
  }
}
