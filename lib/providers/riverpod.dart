import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trivia_app/screens/quiz_end.dart';
import 'package:trivia_app/widgets/composed_widgets/quiz.dart';

import '../models/quiz_model.dart';
import '../screens/questions_screen.dart';

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

    state = state.copy(
        currentPoints: newPoints, pressed: booleans, questionsEnabled: false);
  }

  void wrongAnswer(int i) {
    List<bool> booleans = List.generate(4, (index) {
      if (index == i) {
        return true;
      }
      return false;
    });
    state = state.copy(pressed: booleans, questionsEnabled: false);
  }

  void nextQuestion(BuildContext context, String routeName) {
    final newPage = state.currentPage + 1;

    if (newPage > 2) {
      Navigator.of(context).pushNamed(routeName);
    } else {
      state = state.copy(
          currentPage: newPage,
          questionsEnabled: true,
          pressed: [false, false, false, false]);
    }
  }
}
