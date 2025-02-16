/* 7. Number Check Program:
Create a program that asks the user to input a number and checks if it's positive, negative, or zero
using if-else statements.
 */
import 'dart:io';

void main() {
  CheckNumbers();
}
void CheckNumbers() {
  print('Enter a number');
  int num1 = int.parse(stdin.readLineSync()!);
  if (num1 > 0) {
    print('This number is positive.');
  } else if (num1 < 0) {
    print('This number is negative');
  } else {
    print('This number is zero');
  }
}
