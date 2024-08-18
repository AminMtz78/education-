void main(){

print(fib(number: 5));

}

int fib ({required int number}){
  int res ;

  if (number <= 0){
    res = -1;
  }
  else if (number == 1){
    res = 0;
  }
  else if (number == 2){
    res = 1;
  }
  else{
    res = fib(number: number - 1) + fib(number: number - 2);
  }
  return res;
}