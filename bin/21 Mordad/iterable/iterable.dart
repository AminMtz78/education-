void main() {
  Set<int> mySet = {2, 3, 4, 5, 5, 5, 6, 1, 9, 3, 2, 5};

  print(mySet);

  Map<String, int> myMap = {'a': 2, 'b': 1};
  Map<String, int> myMap2= {'a': 2, 'c': 6};

  var test = {};
  print(test.runtimeType);
  print(myMap.runtimeType);
  print(mySet.runtimeType);

  mySet.add(52);
  mySet.addAll({123, 324, 34343});
  mySet.addAll(myMap.values);

  // print(mySet.elementAt(index));
  print(mySet.elementAt(0));
  print(mySet.elementAtOrNull(4));

  //map
  myMap['third'] = 3;
  myMap['a'] = 100;


  print(myMap.length);
  print(mySet.length);

  MapEntry<String, int> a = MapEntry('b', 4);
  MapEntry<String, int> w = MapEntry('w', 4);
  myMap.addEntries([a]);
  myMap.addEntries([a, w]);

  myMap.addAll(myMap2);
  print(myMap);






}
