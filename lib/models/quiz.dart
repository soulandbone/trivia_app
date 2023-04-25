class Quiz {
  final int currentPage;
  final int currentPoints;

  const Quiz(
      {this.currentPage = 1,
      this.currentPoints =
          0}); //initialize State, Quiz is immutable because of final fields.

  Quiz copy({
    int? currentPage,
    int? currentPoints,
  }) =>
      Quiz(
          currentPage: currentPage ?? this.currentPage,
          currentPoints: currentPoints ?? this.currentPoints);
}
