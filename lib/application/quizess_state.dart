part of 'quizess_cubit.dart';

abstract class QuizessState extends Equatable {
  const QuizessState();
}

class QuizessInitial extends QuizessState {
  @override
  List<Object> get props => [];
}

class QuizessLoading extends QuizessState {
  @override
  List<Object> get props => [];
}

class QuizessLoaded extends QuizessState {
  List<Question> questionList;

  QuizessLoaded({required this.questionList});

  @override
  List<Object> get props => [questionList];
}

class QuizessError extends QuizessState {
  final String message;

  QuizessError({required this.message});

  @override
  List<Object> get props => [message];
}
