/* 3. Lists, Loops & If Conditions
Create a list of numbers. Iterate over the list and:
- If a number is even, print "Even: <number>".
- If a number is odd, print "Odd: <number>".
 */
void main() {
  List<int> numbers = [1, 2, 4, 5, 6, 8, 9, 10, 77, 55, 43, 98];
  numbers.forEach((number) {
    if (number % 2 == 0) {
      print('Even: $number');
    } else {
      print('Odd: $number');
    }
  });
}
