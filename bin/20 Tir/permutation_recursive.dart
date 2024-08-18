void main() {
  String str = 'abc';
  String remain;
  String invStr = str[1] + str[0];
  List<String> result = [];

  if (str.length == 2) {
    result.add(str);
    result.add(invStr);
  }

  if (str.length >= 3) {
    String current = str[0];
    remain = str.substring(1);
    print(remain);
  }

}
  void Permutation({required List<List<String>> str, }){

  }

