/* 5. Class Creation and Dot Operator Usage:
Create a class with a few properties and methods. Instantiate the class and use the dot operator to
access and print its properties and methods.
 */
void main() {
  Car BMW = Car();
  {
    BMW.factory = 'Germany';
    BMW.model = 'X1';
    BMW.color = 'White';
    BMW.productoinYear = 2020;
    BMW.numOfDoors;
    BMW.moveFront();
    BMW.moveReverse();
  }
  print(BMW.color);
}

class Car {
  String? factory;
  String? model;
  String? color;
  int? productoinYear;
  int? numOfDoors;
  void moveFront (){
    print('The car is moving to front');
  }
  void moveReverse(){
    print('The car is moving to reverse');
  }
}
