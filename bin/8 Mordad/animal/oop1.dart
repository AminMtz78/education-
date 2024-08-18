import 'cat.dart';
import 'dog.dart';
import 'fish.dart';
import 'snake.dart';
import 'animal.dart';
void main(){

  final Cat cat = Cat('esi') ;
  List<Animal> animals = [Cat('eli'), Dog('jessi'), Snake('python'), Fish('nemo')];

  for (Animal animal in animals){
    animal.eat();
    animal.sleep();
  }


}