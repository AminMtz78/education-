
void main(){

  print(fib(number: 4));
}


int fib ({required int number}){
  int result ;
  if (number < 0){
    print('can not accept negative number');
    return -1 ;

  }
  else if (number == 1 ){
    result = 0;
  }

  else if (number == 2){
    result = 1;
  }

  else {
     result = fib(number: number -1) + fib(number: number -2);

  }

  return result;



}