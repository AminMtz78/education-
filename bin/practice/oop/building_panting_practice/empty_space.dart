class EmptySpace {
  double width;
  double height;

  EmptySpace(
    this.width,
    this.height,
  );

  double calculateEmptySpaces({required List<EmptySpace> emptySpaces}) {
    double totalEmptyArea = 0;
    for (EmptySpace item in emptySpaces) {
      totalEmptyArea += item.height * item.width;
    }
    return totalEmptyArea;
  }
}
