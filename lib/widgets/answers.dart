import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trivia_app/providers/riverpod.dart';

enum Options { unpressed, pressedCorrect, pressedWrong }

class Answers extends ConsumerStatefulWidget {
  final int number;
  final String optionText;
  final int answer;
  final bool enabled;

  const Answers(
      {required this.number,
      required this.optionText,
      required this.answer,
      required this.enabled,
      super.key});

  @override
  ConsumerState<Answers> createState() => _AnswersState();
}

class _AnswersState extends ConsumerState<Answers> {
  //Options options = Options.unpressed;
  bool pressed = false;
  void checkAnswer() {
    final quiz = ref.read(quizProvider.notifier);

    setState(() {
      if ((widget.number + 1) == widget.answer) {
        // see to do it with enums. More Elegant.
        quiz.correctAnswer();
        pressed = true;
      } else {
        //quiz.wrongAnswer();
        pressed = true;
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
    print('Build Method is ON');
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 8,
      child: ListTile(
        //enabled: widget.enabled,
        onTap: () => checkAnswer(),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        tileColor: !pressed ? Colors.blue : Colors.green,

        leading: icons[widget.number], //Text('$number.'),
        title: Text(widget.optionText),
      ),
    );
  }
}
