import 'person.dart';
import 'pizza.dart';
import 'car.dart';

void main(){

  //Person
  final firstPerson = Person(name: 'amin', age: 25);
  
  print(firstPerson.introduce());

  //Pizza
  final a = Pizza.peperoni('25');

  print(a.toppings);
  print(a.desc());


  //Car
  final bmw = Car();





}

