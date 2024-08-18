 abstract class SmartThings {

  String? name;

  SmartThings(this.name);

  void off();

  void on();

  @override
  String toString() {
    return 'SmartThings{name: $name}';
  }

 }