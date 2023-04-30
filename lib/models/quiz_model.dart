import '../widgets/answers.dart';

class QuizModel {
  final int currentPage;
  final int currentPoints;
  final bool questionsEnabled;
  final List<bool> pressed;

  const QuizModel({
    this.currentPage = 0,
    this.currentPoints = 0,
    this.questionsEnabled = true,
    this.pressed = const [false, false, false, false],
  }); //initialize State, Quiz is immutable because of final fields.

  QuizModel copy(
          {int? currentPage,
          int? currentPoints,
          bool? questionsEnabled,
          List<bool>? pressed}) =>
      QuizModel(
        currentPage: currentPage ?? this.currentPage,
        currentPoints: currentPoints ?? this.currentPoints,
        questionsEnabled: questionsEnabled ?? this.questionsEnabled,
        pressed: pressed ?? this.pressed,
      );
}
