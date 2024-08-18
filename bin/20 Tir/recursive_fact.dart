void main(){
  print(fact(5));

}

int fact( int number) {

  if (number == 0 || number == 1) {
    return 1;
  }
  return (number) * fact(number - 1);

}