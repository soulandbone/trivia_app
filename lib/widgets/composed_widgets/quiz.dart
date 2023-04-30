import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:trivia_app/providers/riverpod.dart';
import 'package:trivia_app/widgets/current_points.dart';

import '../quiz_progress.dart';
import '../answers.dart';
import '../question.dart';

class Quiz extends ConsumerStatefulWidget {
  // has to be updated to be a ConsumerStatefulWidget
  final List<Map<String, dynamic>> questionsAnswers;

  Quiz({required this.questionsAnswers, super.key});
  @override
  ConsumerState<Quiz> createState() => _QuizState();
}

class _QuizState extends ConsumerState<Quiz> {
  void nextPage() {
    final quizReader = ref.read(quizProvider.notifier);
    setState(() {
      quizReader.nextQuestion();
    });
  }

  // change it so that its not needed in the constructor
  @override
  Widget build(BuildContext context) {
    final quizData = ref.watch(quizProvider);

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
              question:
                  '${widget.questionsAnswers[quizData.currentPage]['question']}')),
      Expanded(
        child: ListView.builder(
          itemCount: widget.questionsAnswers[quizData.currentPage]['options']
              .length, // Need to see how to cycle through all the Questions with every new Screen. Needs to be dynamic
          itemBuilder: (context, index) {
            return Center(
                child: Answers(
              number: index, // [0...3]
              optionText:
                  '${widget.questionsAnswers[quizData.currentPage]['options']['$index']}', //because the map has keys
              answer: widget.questionsAnswers[quizData.currentPage]['answer'],
              enabled: quizData.questionsEnabled,
              pressed: quizData.pressed[
                  index], // The '0' needs to be dynamic for every new page of trivia            // IDEA, MAKE IT A LIST OF BOOLEANS, IT CHANGES DEPENDING ON THE INDEXS
            ));
          },
        ),
      ),
      TextButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.amber)),
          onPressed: () => nextPage(),
          child: const Text('Next'))
    ]);
  }
}
