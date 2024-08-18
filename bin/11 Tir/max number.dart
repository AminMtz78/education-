import'dart:io';
void main(){
   int?a,b,c;

  String? input = stdin.readLineSync();
  if(input != null){
    a = int.tryParse(input);
  }

  input = stdin.readLineSync();
  if(input != null){
    b = int.tryParse(input);
  }


   input = stdin.readLineSync();
  if(input != null){
    c = int.tryParse(input);
  }

  if(a != null && b != null && c != null){
    int max = a;
    if(b > max){
      max = b;
    }
    if (c > max){
      max = c;
    }
  }









}