import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trivia_app/providers/riverpod.dart';

class Answers extends ConsumerWidget {
  final int number;
  final String optionText;
  final int answer;

  Answers(
      {required this.number,
      required this.optionText,
      required this.answer,
      super.key});

  List<Icon> icons = const [
    Icon(FontAwesomeIcons.one),
    Icon(FontAwesomeIcons.two),
    Icon(FontAwesomeIcons.three),
    Icon(FontAwesomeIcons.four),
  ];

  void addPoints(WidgetRef ref) {
    final quiz = ref.read(quizProvider.notifier);
    quiz.addPoints();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 8,
      child: ListTile(
        onTap: () => addPoints(ref),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        tileColor: Colors.blue,

        leading: icons[number], //Text('$number.'),
        title: Text(optionText),
      ),
    );
  }
}
