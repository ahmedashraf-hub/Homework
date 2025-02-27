/* 1. Basic Calculator:
Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions. Also, include
optional parameters for different operations (e.g., addition of multiple numbers).
*/
import 'dart:io';

void main() {
  print('Enter the first number');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Enter the second number');
  int num2 = int.parse(stdin.readLineSync()!);

  sumNumbers(num1, num2);
  subtractNumbers(num1, num2);
  multiplyNumbers(num1, num2);
  print(divisionNumbers(num1, num2));
}

void sumNumbers(int num1, int num2, {int num3 = 0}) {
  print(num1 + num2 + num3);
}

void subtractNumbers(int num1, int num2) {
  print(num1 - num2);
}

void multiplyNumbers(int num1, int num2, {int num3 =1}) {
  print(num1 * num2 * num3);
}

double? divisionNumbers(int num1, int num2) {
  if (num2 != 0) {
    double divisionResult = num1 / num2;
    return divisionResult;
  }
  else{
    print('cannot divide by zero.');
  }
  return null;
}
