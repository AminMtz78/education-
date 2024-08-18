import 'alien.dart';



class Martian extends Alien{
  int? numberOfTails;

  Martian(super.numberOfEyes, super.numberOfTeeth, super.numberOfLegs, super.skinColor, this.numberOfTails);


  @override
  void move() {
    // TODO: implement move
    print('alien is walking');
  }


}