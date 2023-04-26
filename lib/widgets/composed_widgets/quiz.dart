import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/providers/riverpod.dart';
import 'package:trivia_app/widgets/current_points.dart';
import '../quiz_progress.dart';

import '../answers.dart';
import '../question.dart';

class Quiz extends ConsumerWidget {
  final List<Map<String, dynamic>> questionsAnswers;

  Quiz({required this.questionsAnswers, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quiz = ref.watch(quizProvider);

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const QuizzProgress(),
      const CurrentPoints(),
      const Gap(120),
      Center(child: Question(question: '${questionsAnswers[1]['question']}')),
      Expanded(
        child: ListView.builder(
          itemCount: questionsAnswers[0]['options']
              .length, // Need to see how to cycle through all the Questions with every new Screen. Needs to be dynamic
          itemBuilder: (context, index) {
            return Center(
                child: Answers(
              number: index,
              optionText: '${questionsAnswers[1]['options']['${index + 1}']}',
              answer: questionsAnswers[1]['answer'],
              enabled: quiz
                  .questionsEnabled, // The '0' needs to be dynamic for every new page of trivia
            ));
          },
        ),
      )
    ]);
  }
}
