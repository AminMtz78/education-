import 'dart:io';


//check String1 = String2 ??
void main() {
  String? first, second;
  first =stdin.readLineSync();
  second = stdin.readLineSync();


  if(first != null && second != null){
    if(first.length != second.length)
      {
        print('false''');
      }
    else{
      List<String> firstChar = first.split('');
      List<String> secondChar = first.split('');

      firstChar.sort();
      secondChar.sort();


      if(firstChar.join() == secondChar.join()){
        print('true');
      }
      else{
        print('false');
      }


    }


  }

}

