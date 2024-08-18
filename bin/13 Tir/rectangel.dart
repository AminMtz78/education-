import 'dart:io';
void main(){

  int? lengh,witgh;
  print('enter length: ');
  String? input = stdin.readLineSync();
  if(input != null) {
    lengh = int.tryParse(input);
  }


  print('enter width: ');
  input = stdin.readLineSync();
  if(input != null) {
    witgh = int.tryParse(input);
  }

  if (witgh != null && lengh != null){
     int finalWitgh = witgh;
     int finalLengh = lengh;
     // int a = finalLengh;


     for (int i = 1; i <= finalWitgh; i++){
        if (i == 1 || i == finalWitgh){
          for (int j = 0; j < finalLengh; j++){
            stdout.write('* ');
          }
          print(' ');
        }

        else{
          stdout.write('*');
          for (int k = 0; k < finalLengh -2; k ++){
            stdout.write('  ');
          }
          stdout.write(' *');
          print(' ');
        }



     }
  }






}