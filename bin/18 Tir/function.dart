
void main() {
  myFunction(str: null, myList: [1, 2, 3, 4, 5, 6, 7, 8, 9]);
}

List<int> myFunction({required String? str, required List<int> myList}) {
  List<int> temp = [];
  if (str != null) {
    print('hello, $str');
  }
  for (int i = 0; i < myList.length; i++) {
    if (myList[i] % 2 == 0) {
      temp.add(myList[i] * myList[i]);
    }
  }


  for ( int item in myList){
    if (item.isEven){
      temp.add(item * item);
    }
  }


  print(temp);
  return temp;
}
