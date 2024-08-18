
import 'dart:io';

void main() {
  print('enter text');
  final String? input = stdin.readLineSync();
  if (input != null) {
    List<String> char = input.split(' ');
    print(char);
    Map<String, int> charCount = {};

    for (String word in char) {
      if (charCount[word] != null) {
        int count = charCount[word]!;
        charCount[word] = ++count;
      } else {
        charCount[word] = 1;
      }
    }

    print(charCount);
  }


}
