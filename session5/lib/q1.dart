/* Basic Arithmetic Calculator
Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
Handle cases where division by zero might occur.
*/

void main() {
  num? result = calculate(5, 0, '+');
  if (result != null) {
    print('Result : $result');
  }
}

num? calculate(num num1, num num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        print('Error: Division by zero is not allowed.');
        return null;
      }
      return num1 / num2;
    default:
      print('Invalid operator. Use +, -, * or /');
      return null;
  }
}
