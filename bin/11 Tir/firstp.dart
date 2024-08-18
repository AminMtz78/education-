import 'dart:io';
void main()
{
  //
  //


  // print('please enter your name:');
  // final String? input =stdin.readLineSync();
  // if (input != null)
  //   {
  //     print('welcome , $input');
  //   }


  //
  //




  // List<int> numList =[1,2,3];
  // print(numList[0]);
  //
  // numList.add(4);
  // print(numList);
  //
  // numList.addAll([5,7,3,8]);
  // print(numList);
  // numList.insert(5 , 6);
  // numList.insertAll(2, [0,0,0,0,0]);
  // numList.remove(0);
  // numList.remove(5);
  //
  // print(numList);
  // print(numList.first);
  // print(numList.last);
  // print(numList.length);



  //
  //



  // print('please enter your number');
  //  final String? input = stdin.readLineSync();
  //  if(input != null)
  //    {
  //      final int? number = int.tryParse(input);
  //      if(number != null) {
  //        if (number.isEven) {
  //          print('enen');
  //        }
  //        else {
  //          print('odd');
  //        }
  //      }
  //    }




//
//



int max1 = 0;


 final String? num = stdin.readLineSync();
 if(num != null)
  {
   final int? max = int.tryParse(num);
   if(max != null){
    final String? num = stdin.readLineSync();
    if(num != null){
     final int? num2 = int.tryParse(num);
     if( num2 != null){
      if(num2 > max){
        max1 = num2;
      }
      else {
       final String? num = stdin.readLineSync();
       if(num != null){
        final int? num3 = int.tryParse(num);
        if(num3 != null){
         if(max1 < num3 ){
          max1 = num3;

         }
        }
       }
      }
     }


    }

   }
  }


//




}