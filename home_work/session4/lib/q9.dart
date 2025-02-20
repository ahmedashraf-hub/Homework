/* 9. OOP, Constructors & Getters
Create a class `Rectangle` with:
- Private attributes `_width` and `_height`.
- A constructor that initializes the values.
- A getter `area` that calculates and returns the area.
In `main()`, create a `Rectangle` object and print its area.
 */
void main() {
  Rectangle rectangle = Rectangle(4, 6);
  print(rectangle.area);
}

class Rectangle {
  double _height;
  double _width;

  Rectangle(this._height, this._width);
  double get area => this._height*this._width;

}
