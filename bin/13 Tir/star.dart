import 'dart:io';

void main(){

  int lines = 6;

  for(int i = 0 ; i < lines; i++){
    int count = i + 1;
    for(int j = 0; j < count; j++){
      stdout.write('*');
    }
    print('');
  }


}
