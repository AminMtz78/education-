import'dart:io';

void main() {
  print('enter number:');
  String? input = stdin.readLineSync();
  if (input != null){
    int? n = int.tryParse(input);
    if(n != null){
      int fib0 = 0;
      int fib1 = 1;
      int res = 0;

      if( n == 0){
        print(fib0);
      }
      else if(n == 1){
        print(fib1);
      }
      else{
        print(fib0);
        print(fib1);
        for(int i = 3; i <= n; i++){
          //print('fib0 =$fib0 , fib1 = $fib1, res = $res');
          res = fib0 + fib1;
          // print('res =$res, i = $i ');
          print(res);
          fib0 = fib1;
          fib1 = res;





        }
      }

    }
  }



}