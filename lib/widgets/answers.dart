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
  bool pressed = false;

  void addPoints(WidgetRef ref) {
    final quiz = ref.read(quizProvider.notifier);
    quiz.addPoints();
    setState(() {
      pressed = true;
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
        onTap: () => addPoints(ref),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        tileColor: pressed ? Colors.green : Colors.blue,

        leading: icons[widget.number], //Text('$number.'),
        title: Text(widget.optionText),
      ),
    );
  }
}
