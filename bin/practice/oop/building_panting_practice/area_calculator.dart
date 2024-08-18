import 'empty_space.dart';

class AreaCalculator {
  double totalArea;
  List<EmptySpace> emptySpaces = [];

  AreaCalculator(this.totalArea, this.emptySpaces);

  double calculatePaintingArea() {
    double totalEmptyArea = 0;
    for (EmptySpace item in emptySpaces) {
      totalEmptyArea += item.height * item.width;
    }
    return totalArea - totalEmptyArea;
  }
}
