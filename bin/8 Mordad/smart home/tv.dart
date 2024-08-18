import 'smart_things.dart';

class Tv extends SmartThings {

  Tv(super.name);

  @override
  void off() {
    print('$name tv  is turning off');
  }

  @override
  void on() {
    print('$name tv  is turning on');
  }

  @override
  String toString() {
    return 'Tv{}';
  }
}