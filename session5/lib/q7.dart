/*  Reverse a String
 Write a function that takes a string as input and returns the string reversed.
 Example:
 reverseString('hello') -> 'olleh'
 */
void main() {
  reverseString('hello');
}

void reverseString(String word) {
  String reversed = '';
  for (int i = word.length - 1; i >= 0; i--) {
    reversed += word[i];
  }
  print("Reverse of '$word' is '$reversed'.");
}
