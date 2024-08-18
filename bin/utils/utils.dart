import 'dart:io';

double getDouble (){

  String? input;
  double? number ;


  do{
    print('enter number:');
    input = stdin.readLineSync();
    if (input != null){
      number = double.tryParse(input);
    }
    else {
      continue;
    }

  }while(number == null);

  return number;


}

