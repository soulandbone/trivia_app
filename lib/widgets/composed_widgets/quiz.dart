import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../answers.dart';
import '../question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questionsAnswers;

  Quiz({required this.questionsAnswers, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Gap(120),
      Center(child: Question(question: '${questionsAnswers[0]['question']}')),
      Expanded(
        child: ListView.builder(
          itemCount: questionsAnswers[0]['options']
              .length, // Need to see how to cycle through all the Questions with every new Screen. Needs to be dynamic
          itemBuilder: (context, index) {
            return Center(
                child: Answers(
              number: index,
              optionText: '${questionsAnswers[0]['options']['${index + 1}']}',
              answer: questionsAnswers[0][
                  'answer'], // The '0' needs to be dynamic for every new page of trivia
            ));
          },
        ),
      )
    ]);
  }
}