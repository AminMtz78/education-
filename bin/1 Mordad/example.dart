


void main (){

  // int Function(int) multiplyBy5 = (int value) =>  value * 5;
multiplyBy5(int value) =>  value * 5;


List<int> myList = [1,2,3,4,5,6,7,8,9];

print(applyOperation(list: myList, mul: multiplyBy5));

//define function in required function
print((applyOperation(list: myList, mul:(int a) => a * 5 )));

}

List<int> applyOperation ({required List<int> list,required Function mul}){

  List<int> newList =[];

  for (int item in list){
    newList.add(mul(item));
  }





    return newList;
}

