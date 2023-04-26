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

  Answers(
      {required this.number,
      required this.optionText,
      required this.answer,
      this.enabled = true,
      super.key});

  @override
  ConsumerState<Answers> createState() => _AnswersState();
}

class _AnswersState extends ConsumerState<Answers> {
  var options = Options.unpressed;

  void checkAnswer(WidgetRef ref) {
    final quiz = ref.read(quizProvider.notifier);

    setState(() {
      if ((widget.number + 1) == widget.answer) {
        // see to do it with enums. More Elegant.
        options = Options.pressedCorrect;
        quiz.addPoints();
      } else {
        options = Options.pressedWrong;
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
        onTap: options == Options.unpressed
            ? () => checkAnswer(ref)
            : () => print('this happens after the button is pressed'),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        tileColor: options == Options.unpressed
            ? Colors.blue
            : (options == Options.pressedCorrect ? Colors.green : Colors.red),

        leading: icons[widget.number], //Text('$number.'),
        title: Text(widget.optionText),
      ),
    );
  }
}
