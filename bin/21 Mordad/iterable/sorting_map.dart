import 'dart:io';

void main() {
  String? input;
  Map<String, List<String>?> myMap = {};

  do {
    print('enter word :');
    input = stdin.readLineSync();
  } while (input == null);

  List<String> myWords = input.trim().split(' ');
  List<String> temp = [];

  myWords.sort();
  myWords.removeWhere((element) => element.isEmpty);

  for (int i = 0; i < myWords.length; i++) {
    String char = myWords[i][0];
    myMap[char] = [];
  }
  for (int i = 0; i < myWords.length; i++) {
    if (myWords[i].isNotEmpty && myMap.containsKey(myWords[i][0])) {
      myMap[myWords[i][0]]?.add(myWords[i]);
    }
  }
  print(myMap);
}
