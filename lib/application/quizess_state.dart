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
  List<QuizModel> quizList;

  QuizessLoaded({required this.quizList});

  @override
  List<Object> get props => [quizList];
}

class QuizessError extends QuizessState {
  final String message;

  QuizessError({required this.message});

  @override
  List<Object> get props => [message];
}
