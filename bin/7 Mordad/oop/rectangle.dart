class Rectangle {

   int _width, _height;


  Rectangle(this._height, this._width);

    int get width => _width;

    int get height => _height;

    int  get area => _width * _height;

    set width(int value){
      if (value > 0){
        _width = value;
      }
    }



}