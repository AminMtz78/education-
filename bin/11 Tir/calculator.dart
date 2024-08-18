import'dart:io';

void main() {
  int? a,b;
  int result;
  print('enter the first number:');
  String? input = stdin.readLineSync();
  if (input != null) {
     a = int.tryParse(input);

  }

  print('enter the second number:');
  input = stdin.readLineSync();
  if (input != null) {
       b = int.tryParse(input);
  }
  if(a != null && b != null){
    print('enter the operation(*,/,+,-):');
    input = stdin.readLineSync();
    if(input == '*'){
      result = a * b;
      print(result);
    }
    else if(input == '/') {
      if (b == 0) {
        print('error : number / 0 is not define');
      }
      else {
        result = a ~/ b;
        print(result);
      }
    }
    else if(input == '+'){
      result = a + b;
      print(result);
    }
    else if(input == '-'){
      result = a - b;
      print(result);
    }
    else{
      print('wrong operation');
    }
  }



}