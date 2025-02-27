/* Find Prime Numbers in a Range
Write a function that takes two numbers (start, end) and returns a list of all prime numbers between
them.
Ensure that the function correctly identifies prime numbers and handles edge cases where start is
greater than end.
*/
void main() {
  getPrimeInRange(10, 1);
}

void getPrimeInRange(int start, int end) {
  if (start < end) {
    for (int i = start; i <= end; i++) {
      bool isPrime = true;
      for (int j = 2; j < i; j++) {
        if (i % j == 0) {
          isPrime = false;
        }
      }
      if (isPrime == true) {
        print('$i is prime');
      }
    }
  } else {
    int temp = end;
    end = start;
    start = temp;
    for (int i = start; i <= end; i++) {
      bool isPrime = true;
      for (int j = 2; j < i; j++) {
        if (i % j == 0) {
          isPrime = false;
        }
      }
      if (isPrime == true) {
        print('$i is prime');
      }
    }
  }
}
