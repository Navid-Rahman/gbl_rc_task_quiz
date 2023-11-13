import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:quiz_task/constants/api_endpoints.dart';
import 'package:quiz_task/models/quiz_model.dart';

class QuizApiService {
  Future<QuizModel> getQuizzes() async {
    final response = await http.get(Uri.parse(ApiEndpoints.BASE_URL));
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      return QuizModel.fromJson(jsonData);
    }
    if (response.statusCode == 404) {
      throw Exception('No quizzes found!');
    } else {
      throw Exception('Failed to load quizzes!');
    }
  }
}
