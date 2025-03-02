/* Check Leap Year
Write a function that determines if a given year is a leap year.
A year is a leap year if it is divisible by 4 but not divisible by 100, except if it is also divisible by 400.
*/
void main() {
  isLeap(500);
}

void isLeap(int year) {
  if ((year % 4 == 0 && year % 100 != 0) || (year == 400)) {
    print('$year is leap year.');
  } else {
    print('$year is not leap year.');
  }
}
