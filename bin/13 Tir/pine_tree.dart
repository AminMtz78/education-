import 'dart:io';

void main(){

  String? input;
  int? number;
  do{
    print('enter your number:\n (for exit please type: *exit)');
    input = stdin.readLineSync();
    if(input != null){
      number = int.tryParse(input);
    }
    // if(input == '*exit'){
    //   break;
    // }

  }
  while(number == null);

  int lines = number;
  int count = 1;

  for (int i = 1; i <= lines; i++){
    for( int j = lines - i; j > 0; j--){
      stdout.write(' ');
    }

    for (int k = 1; k <= count ; k ++ ){
      stdout.write('*');
    }
    print('');
    count += 2;

  }

}