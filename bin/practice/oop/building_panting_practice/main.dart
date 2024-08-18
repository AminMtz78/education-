import 'paint.dart';
import 'location.dart';
import 'area_calculator.dart';
import 'paint_job_calculator.dart';
import 'empty_space.dart';

void main() {
  EmptySpace a = EmptySpace(4, 3);
  EmptySpace b = EmptySpace(3, 3);
  EmptySpace c = EmptySpace(2, 3);
  EmptySpace d = EmptySpace(1, 3);

  AreaCalculator aminHome = AreaCalculator(300, [a, b, c, d]);

  double paintingArea = aminHome.calculatePaintingArea();



  print(paintingArea);
  print('-----------');

  Location inside = Location('inside', 2);
  Location outside = Location('inside', 3);
  Location roof = Location('inside', 4);

  Paint pelastic = Paint('pelastic', 25);
  Paint oily = Paint('pelastic', 35);

  PaintJobCalculator aminHomeCost = PaintJobCalculator(inside, aminHome, pelastic);
  print(aminHomeCost.calculatePaintingCost());


}
