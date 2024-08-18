import 'dart:io';

void main(){

  print(multiply());
}

Function multiply (){
  print('enter the number:');
  String? input;
  int? number;
  input = stdin.readLineSync();
  while (true){
    input = stdin.readLineSync();
    if (input ==null){
      continue;
    }
    number = int.tryParse(input);
    if(number == null || number < 0){
      continue;
    }
    if (number > 0){
      return (int value) => value * number!;
    }
  }
}