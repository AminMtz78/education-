import 'smart_things.dart';

class WashingMachine extends SmartThings{

  WashingMachine(super.name);

  @override
  void off() {
    print('$name washing machine is turning off');
  }

  @override
  void on() {
    print('$name washing machine is turning on');
  }

  @override
  String toString() {
    return 'WashingMachine{}';
  }
}