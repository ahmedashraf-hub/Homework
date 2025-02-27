/* Sum of List Elements
 Write a function that takes a list of numbers and returns the sum of all elements.
 Example:
 sumList([1, 2, 3, 4, 5]) -> 15
 */
void main() {
  sumList([1, 2, 3, 4, 5]);
}

void sumList(List<int> nums) {
  int sum = 0;
  for (int num in nums) {
    sum += num;
  }
  print(sum);
}
