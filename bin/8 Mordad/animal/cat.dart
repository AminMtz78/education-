import 'animal.dart';


class Cat extends Animal{
  Cat(super.name);

  @override
  void eat() {
    print('$name is eating...');
  }

  @override
  void sleep() {
    print('cat is sleeping...');
  }


}