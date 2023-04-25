import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/quiz_model.dart';

final quizProvider =
    StateNotifierProvider<QuizNotifier, QuizModel>((ref) => QuizNotifier());

class QuizNotifier extends StateNotifier<QuizModel> {
  //QuizNotifier(super.state);
  QuizNotifier() : super(const QuizModel());

  void addPoints() {
    final newPoints = state.currentPoints + 5;
    state = state.copy(currentPoints: newPoints);
  }

  void pressed() {}
}
