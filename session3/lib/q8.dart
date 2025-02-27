/* 8. Range Checker Program:
Write a Dart program that checks if a number is within a specified range using logical operators and
prints the result. */
import 'dart:io';

void main() {
  numInRange();
}

void numInRange() {
  print('Enter the number');
  int number = int.parse(stdin.readLineSync()!);

  print('Enter frist number');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Enter last number');
  int num2 = int.parse(stdin.readLineSync()!);

  if (num2 > num1) {
    if (number >= num1 && number <= num2) {
      print('Of cource, number is in range.');
    } else {
      print('Number is not in range.');
    }
  } else {
    int temp = num2;
    num2 = num1;
    num1 = temp;
    if (number >= num1 && number <= num2) {
      print('Of cource, number is in range.');
    } else {
      print('Number is not in range.');
    }
  }
}
