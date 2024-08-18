import 'animal.dart';

class Dog extends Animal{
  Dog(super.name);

  @override
  void eat() {
    print('$name is eating...');
  }

  @override
  void sleep() {
    print('$name is sleeping...');
  }

}

