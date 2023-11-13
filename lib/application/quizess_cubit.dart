import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';

import '../models/quiz_model.dart';
import '../services/quiz_api_service.dart';

part 'quizess_state.dart';

class QuizessCubit extends Cubit<QuizessState> {
  final QuizApiService quizApiService = QuizApiService();
  late QuizModel quizData;
  final Logger logger;

  QuizessCubit({required this.logger}) : super(QuizessInitial());

  Future<void> fetchQuizData() async {
    emit(QuizessLoading());
    try {
      quizData = await quizApiService.getQuizzes();
      emit(QuizessLoading());
    } catch (e) {
      emit(QuizessError(message: e.toString()));
    }
  }
}
