import 'dart:io';

double? getIntegerFromUser() {
  String? input;
  double? number;
  print( number.runtimeType);
  do {
    print('enter number:');
    input = stdin.readLineSync();
    if (input != null){
      number = double.tryParse(input);
    }

  } while (number != null);

  return number;
}