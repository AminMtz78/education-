import 'animal.dart';

class Fish extends Animal{
  Fish(super.name);

  @override
  void eat() {
    print('fish is eating...');
  }

  @override
  void sleep() {
    print('$name is sleeping...');
  }



}