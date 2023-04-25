import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trivia_app/providers/riverpod.dart';

class Answers extends ConsumerStatefulWidget {
  final int number;
  final String optionText;
  final int answer;

  Answers(
      {required this.number,
      required this.optionText,
      required this.answer,
      super.key});

  @override
  ConsumerState<Answers> createState() => _AnswersState();
}

class _AnswersState extends ConsumerState<Answers> {
  int pressedCorrect = -1;

  void checkAnswer(WidgetRef ref) {
    final quiz = ref.read(quizProvider.notifier);

    quiz.addPoints();
    setState(() {
      if ((widget.number + 1) == widget.answer) {
        // see to do it with enums. More Elegant.
        pressedCorrect = 0;
      } else {
        pressedCorrect = 1;
      }
    });
  }

  List<Icon> icons = const [
    Icon(FontAwesomeIcons.one),
    Icon(FontAwesomeIcons.two),
    Icon(FontAwesomeIcons.three),
    Icon(FontAwesomeIcons.four),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 8,
      child: ListTile(
        onTap: () => checkAnswer(ref),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        tileColor: pressedCorrect == -1
            ? Colors.blue
            : (pressedCorrect > 0 ? Colors.red : Colors.green),

        leading: icons[widget.number], //Text('$number.'),
        title: Text(widget.optionText),
      ),
    );
  }
}
