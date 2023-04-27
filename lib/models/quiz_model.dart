class QuizModel {
  final int currentPage;
  final int currentPoints;
  final bool questionsEnabled;

  const QuizModel(
      {this.currentPage = 0,
      this.currentPoints = 0,
      this.questionsEnabled =
          true}); //initialize State, Quiz is immutable because of final fields.

  QuizModel copy(
          {int? currentPage, int? currentPoints, bool? questionsEnabled}) =>
      QuizModel(
          currentPage: currentPage ?? this.currentPage,
          currentPoints: currentPoints ?? this.currentPoints,
          questionsEnabled: questionsEnabled ?? this.questionsEnabled);
}
