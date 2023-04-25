class QuizModel {
  final int currentPage;
  final int currentPoints;

  const QuizModel(
      {this.currentPage = 1,
      this.currentPoints =
          0}); //initialize State, Quiz is immutable because of final fields.

  QuizModel copy({
    int? currentPage,
    int? currentPoints,
  }) =>
      QuizModel(
          currentPage: currentPage ?? this.currentPage,
          currentPoints: currentPoints ?? this.currentPoints);
}
