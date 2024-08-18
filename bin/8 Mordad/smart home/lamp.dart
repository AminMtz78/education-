import 'smart_things.dart';


class Lamp extends SmartThings{


  Lamp(super.name);

  @override
  void off() {
    print('$name lamp is turning off');
  }

  @override
  void on() {
    print('$name lamp is turning on');
  }

  @override
  String toString() {
    return 'Lamp{}';
  }
}