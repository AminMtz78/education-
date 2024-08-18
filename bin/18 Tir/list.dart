

void main(){


  List<int> a = [1,2,3,4,5];

  List<int> b = [...a];

  List<int> myList = [1,2,5,...b];

  String input = 'a,b,c,d';
  List<int> yourlist = [1,2,3,if (input.length == 3)4 else 5];


  namedParameterAddition(a: 5, b: 6);

}


int namedParameterAddition({required int a , required int b}){
  return a * 10 + b * 100;
}


int positionalParameterAddition = ([int a = 1, int b = 2 ]){
  return a * 10 + b * 100;
} as int;