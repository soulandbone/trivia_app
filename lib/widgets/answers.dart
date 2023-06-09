import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trivia_app/providers/riverpod.dart';
import 'package:trivia_app/utils/app_styles.dart';

enum Options { unpressed, pressedCorrect, pressedWrong }

class Answers extends ConsumerStatefulWidget {
  final int number; //[0,1,2,3]
  final String optionText;

  final bool correctAnswer;
  final bool enabled;
  final bool pressed;

  const Answers(
      {required this.number,
      required this.optionText,
      required this.correctAnswer,
      required this.enabled,
      required this.pressed,
      super.key});

  @override
  ConsumerState<Answers> createState() => _AnswersState();
}

class _AnswersState extends ConsumerState<Answers> {
  late bool correctOption;

  void checkAnswer(number) {
    final quiz = ref.read(quizProvider.notifier);

    setState(() {
      if (widget.correctAnswer) {
        quiz.correctAnswer(number);
        correctOption = true;
      } else {
        quiz.wrongAnswer(number);
        correctOption = false;
      }
    });
  }

  List<Icon> icons = const [
    Icon(
      FontAwesomeIcons.one,
    ),
    Icon(
      FontAwesomeIcons.two,
    ),
    Icon(
      FontAwesomeIcons.three,
    ),
    Icon(
      FontAwesomeIcons.four,
    ),
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
        enabled: widget.enabled,

        onTap: () => checkAnswer(widget.number),
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: AppStyles.turquoise, width: 0.5),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        tileColor: !widget.pressed
            ? AppStyles.cardBgColor
            : correctOption
                ? Colors.green
                : Colors.red,

        leading: icons[widget.number], //[0...3],
        title: Text(
          widget.optionText,
          style: const TextStyle(color: Colors.white54),
        ),
      ),
    );
  }
}
