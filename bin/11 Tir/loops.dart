import'dart:io';

void main() {



  //
  //




  // int count = 0;
  // while( count < 10){
  //   print(count++);
  // }

  //
  //




  // int flag = 20;
  // do{
  //   print(++flag);
  // }while(flag > 10);



  //
  //





  // for(int i = 0;i < 10; i++){
  //   print('i is $i');
  // }







  // List<int> number = [1,2,3,4,5,6,7,8,9,10];
  //
  // for(int i = 0; i < number.length; i ++){
  //   number[i] = number[i] * 10;
  // }
  // print(number);




  // number.forEach((element)
  //  print(number);



  // // input => number (5) output =>  5+4+3+2+1 = 21
  // int res = 0;
  // int? num;
  // print('enter the number:');
  // String?  input = stdin.readLineSync();
  // if(input != null){
  //     num = int.tryParse(input);
  //     if(num != null){
  //       for( int i = num; i > 0; i--){
  //         print('sum = $res, i = $i');
  //          res = res + i ;
  //       }
  //       print(res);
  //     }
  //}



  //reverse a String
  print('enter your word:');
  String? input = stdin.readLineSync();
  if(input != null){
    String newString ='';
    // String a = '';
    for( int i = input.length -1  ; i >= 0; i--){
      newString = newString + input[i];



    }
    print(newString);

    if(input == newString){
      print('yes');
    }
    else{
      print('no');
    }
  }





}


