import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/providers/riverpod.dart';
import 'package:trivia_app/widgets/current_points.dart';

import '../quiz_progress.dart';
import '../answers.dart';
import '../question.dart';

class Quiz extends ConsumerWidget {
  // has to be updated to be a ConsumerStatefulWidget
  final List<Map<String, dynamic>> questionsAnswers;
  final int questionIndex;

  Quiz(
      {required this.questionsAnswers,
      required this.questionIndex,
      super.key}); // change it so that its not needed in the constructor

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quiz = ref.watch(quizProvider);

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Gap(40),
      const QuizzProgress(),
      const Align(
        alignment: Alignment.centerRight,
        child: CurrentPoints(),
      ),
      const Gap(120),
      Center(
          child: Question(
              question: '${questionsAnswers[questionIndex]['question']}')),
      Expanded(
        child: ListView.builder(
          itemCount: questionsAnswers[questionIndex]['options']
              .length, // Need to see how to cycle through all the Questions with every new Screen. Needs to be dynamic
          itemBuilder: (context, index) {
            return Center(
                child: Answers(
              number: index,
              optionText:
                  '${questionsAnswers[questionIndex]['options']['${index + 1}']}',
              answer: questionsAnswers[1]['answer'],
              enabled: quiz
                  .questionsEnabled, // The '0' needs to be dynamic for every new page of trivia
            ));
          },
        ),
      ),
      const TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.amber)),
          onPressed: null,
          child: Text('This is the Button to end the quiz'))
    ]);
  }
}
