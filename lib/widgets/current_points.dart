import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trivia_app/providers/riverpod.dart';

class CurrentPoints extends ConsumerWidget {
  const CurrentPoints({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quiz = ref.watch(quizProvider);

    return Container(
      padding: const EdgeInsets.all(12),
      height: 50,
      decoration: const BoxDecoration(color: Colors.amberAccent),
      child: Text('Points: ${quiz.currentPoints}'),
    );
  }
}
