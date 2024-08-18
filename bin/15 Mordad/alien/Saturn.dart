import 'alien.dart';
class Saturn extends Alien{

  int numberOfHorns;
  Saturn(super.numberOfEyes, super.numberOfTeeth, super.numberOfLegs, super.skinColor, this.numberOfHorns);

  @override
  void move() {
    // TODO: implement move
    print('alien is flying');
  }

}