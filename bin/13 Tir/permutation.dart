void main() {

//   String inputString = 'abc';
//
//   Set<String> permutation = permute(inputString);
//
//
//
// }
//
//
//
// Set<String> permute (String str){
//
//   if (str.length < 2){
//     return {str};
//   }
//
//   Set<String> permutation = {};
//
//   for (int i = 0 ; i < str.length; i++){
//     String currentChar = str[i];
//     String remainChar = str.substring(start)
//   }
  String str = 'abc';
  print(str.length);

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];
    String remainingChars = str.substring(0, i) + str.substring(i + 1);
    print(currentChar);
    print(remainingChars);
  }

}






//
// void main() {
//   String inputString = "aabc";
//   Set<String> permutations = permute(inputString);
//   permutations.forEach((perm) => print(perm));
// }
//
// Set<String> permute(String str) {
//   // حالت پایه: اگر طول رشته یک باشد، لیستی شامل همان رشته برگردانده می‌شود.
//   if (str.length == 1) {
//     return {str};
//   }
//
//   Set<String> permutations = {};
//
//   for (int i = 0; i < str.length; i++) {
//     String currentChar = str[i];
//     String remainingChars = str.substring(0, i) + str.substring(i + 1);
//     for (String perm in permute(remainingChars)) {
//       permutations.add(currentChar + perm);
//     }
//   }
//
//   return permutations;
// }
