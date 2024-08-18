import 'animal.dart';

class Snake extends Animal{
  Snake(super.name);

  @override
  void eat() {
    print('$name is eating...');
  }

  @override
  void sleep() {
    print('$name is sleeping...');
  }


}