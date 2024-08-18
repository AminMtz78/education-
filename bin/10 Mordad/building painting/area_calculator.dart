

import 'empty_space.dart';
class AreaCalculator{
  double area;

  List<EmptySpace>  emptySpaces = [];


  AreaCalculator(this.area, this.emptySpaces);



  double calculateArea () {
    double totalEmptySpaces = 0;
    for (final item in emptySpaces){
      totalEmptySpaces += item.width * item.height;
    }

    return area - totalEmptySpaces;
  }


}