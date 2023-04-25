import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/quiz.dart';

final quizProvider =
    StateNotifierProvider<QuizNotifier, Quiz>((ref) => QuizNotifier());

class QuizNotifier extends StateNotifier<Quiz> {
  //QuizNotifier(super.state);
  QuizNotifier() : super(const Quiz());

  void addPoints() {
    final newPoints = state.currentPoints + 5;
    state = state.copy(currentPoints: newPoints);
  }
}
