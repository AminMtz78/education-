import 'dart:io';

import 'smart_things.dart';
import 'lamp.dart';
import 'washing_machine.dart';
import 'tv.dart';


void main(){

  List<SmartThings> myStuff = [Lamp('kitchen'), Lamp('living room'), WashingMachine(null), Tv('living room'), Tv('baby room')];


 //  for (SmartThings item in myStuff){
 //    print(item.name);
 //    item.off();
 //    item.on();
 //    print('-------');
 // }



  for (int i = 0; i < 10; i++){
    print('please enter a number:\n'
        'for add TV : 1\n'
        'for add lamp : 2\n'
        'for add washing machine ; 3');
     int index = getIntFromUser();

    if (index == 1){
      myStuff.add(Tv(null));
    }

    else if (index == 2){
      myStuff.add(Lamp(null));
    }

    else if (index == 3){
      myStuff.add(WashingMachine(null));
    }

    else {
      print('invalid number');
      i--;
      // or we can use while loop

    }

  }

  print(myStuff);

}


int getIntFromUser() {
  int? number ;
  String? input ;
  do{
    input = stdin.readLineSync();
    if (input == null){
      continue;
    }
    else {
      number = int.tryParse(input);
    }
  }while (number == null);

  return number;



}