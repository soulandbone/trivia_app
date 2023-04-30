import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/quiz_model.dart';

final quizProvider =
    StateNotifierProvider<QuizNotifier, QuizModel>((ref) => QuizNotifier());

class QuizNotifier extends StateNotifier<QuizModel> {
  //QuizNotifier(super.state);
  QuizNotifier() : super(const QuizModel());

  void correctAnswer(int i) {
    final newPoints = state.currentPoints + 5;
    List<bool> booleans = List.generate(4, (index) {
      if (index == i) {
        return true;
      }
      return false;
    });

    state = state.copy(currentPoints: newPoints, pressed: booleans);
  }

  void wrongAnswer() {
    state = state.copy(questionsEnabled: false);
  }

  void nextQuestion() {
    final newPage = state.currentPage + 1;

    state = state.copy(
        currentPage: newPage,
        questionsEnabled: true,
        pressed: [false, false, false, false]);
  }
}
