import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/riverpod.dart';

class QuizzProgress extends ConsumerWidget {
  const QuizzProgress({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizData = ref.watch(quizProvider);

    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: LinearProgressIndicator(
        minHeight: 10,
        color: Colors.amber,
        value: (quizData.currentPage + 1) / 3,
      ),
    );
  }
}
