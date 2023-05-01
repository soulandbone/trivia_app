import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trivia_app/providers/riverpod.dart';
import 'package:trivia_app/utils/app_styles.dart';

class CurrentPoints extends ConsumerWidget {
  const CurrentPoints({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizData = ref.watch(quizProvider);

    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      height: 50,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.amberAccent,
        //borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Text(
        '${quizData.currentPoints}',
        textAlign: TextAlign.center,
        style: AppStyles.title,
      ),
    );
  }
}
