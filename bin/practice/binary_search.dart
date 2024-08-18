
void main (){


  List<int> myList = [1,2,56,7,3,578,34,23,47,65,87,1,2,35,89,6,8,9,11,24,0976,15];
  myList.sort();


  print(binarySearch(list: myList, target: 88, first: 0, last: myList.length -1));
  // print(myList[18]);


}

int binarySearch ({required List<int> list, required int target, required int first, required int last}) {
  int targetIndex = 0;
  int mid = last - first ~/ 2;

  if (target == list[mid]) {
    targetIndex = mid;

  }
  else if (target > list[mid]) {
     targetIndex = binarySearch(list: list, target: target, first: mid + 1, last: last);
  }
  else if (target < list[mid]) {
   targetIndex = binarySearch(list: list, target: target, first: first, last: mid - 1);
  }

  return targetIndex;

}

