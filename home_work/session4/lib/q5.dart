/* 5. Sets, Functions & Return Statement
Write a function `uniqueNames(List<String> names)` that:
- Accepts a list of names.
- Returns a Set containing only unique names.
Call the function inside `main()` and print the result.
 */
void main() {
  List<String> names = [
    'Ahmed',
    'Mahmoud',
    'Ashraf',
    'Ali',
    'Mahmoud',
    'Ashraf',
    'Mohamed',
    'Amir',
    'Mahmoud',
    'Ashraf',
    'Mahmoud',
    'Omar'
  ];
  print('unique names is: ${uniqueNumbers(names)}');
}

Set<String> uniqueNumbers(List<String> names) {
  return names.toSet();
}
