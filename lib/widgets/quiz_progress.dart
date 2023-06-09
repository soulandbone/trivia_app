import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trivia_app/utils/app_styles.dart';

import '../providers/riverpod.dart';

class QuizzProgress extends ConsumerWidget {
  final List<Map<String, dynamic>> questionsAnswers;
  const QuizzProgress({required this.questionsAnswers, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizData = ref.watch(quizProvider);

    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: LinearProgressIndicator(
        minHeight: 10,
        backgroundColor: Colors.black,
        color: AppStyles.turquoise,
        value: (quizData.currentPage + 1) / questionsAnswers.length,
      ),
    );
  }
}
