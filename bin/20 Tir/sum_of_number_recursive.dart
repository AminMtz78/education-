void main(){

print(sumOfDigits(123456));

}

int sumOfDigits (int number ){
  int res ;
  if ( number ~/ 10 == 0){
    res = number % 10;
  }
  else {
    res = number % 10 + sumOfDigits(number ~/ 10);
  }
  return res;

}