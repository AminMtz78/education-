void main () {
  List<int> myList = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    1,
    23,
    54,
    63,
    2,
    3,
    1,
    3,
    4,
    576,
    345,
    78,
  ];

  myList.sort();

  print(binarySearch(list: myList, target: 576, first: 0, last: myList.length));

}





int binarySearch ({required List<int> list,required int target,required int first,
    required int last}){

    int mid = ( first + last ) ~/ 2;
    if (target == list[mid]){
     return mid;
    }
    else if ( target < list[mid]){

     return binarySearch(list: list, target: target, first: 0, last: mid - 1);

    }

    else {
      return binarySearch(list: list, target: target, first: mid + 1 , last: last);
    }

}

