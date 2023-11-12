import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/quiz_model.dart';
import '../services/quiz_api_service.dart';

part 'quizess_state.dart';

class QuizessCubit extends Cubit<QuizessState> {
  QuizessCubit() : super(QuizessInitial());

  void getQuizList() async {
    emit(QuizessLoading());
    try {
      final quizList = await QuizApiService().getQuizzes();
      emit(QuizessLoaded(quizList: quizList));
    } catch (e) {
      emit(QuizessError(message: e.toString()));
    }
  }
}
