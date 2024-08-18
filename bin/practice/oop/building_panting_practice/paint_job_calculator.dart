import 'paint.dart';
import 'location.dart';
import 'area_calculator.dart';

class PaintJobCalculator {
  Location location;
  AreaCalculator areaCalculator;
  Paint paint;

  PaintJobCalculator(
    this.location,
    this.areaCalculator,
    this.paint,
  );

  double calculatePaintingCost() {
    return location.factor *
        areaCalculator.calculatePaintingArea() *
        paint.costPerSquareMeter;
  }
}
