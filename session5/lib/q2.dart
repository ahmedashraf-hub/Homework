/* Temperature Converter
Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.
*/
void main() {
  convertTemperature(35, 'c');
}

void convertTemperature(double temperature, String unit) {
  if (unit.toLowerCase() == 'c') {
    print('F = ${(9 / 5) * (temperature) + 32}');
  } else if (unit.toLowerCase() == 'f') {
    print('C = ${((5 / 9) * (temperature - 32)).toStringAsFixed(2)}');
  } else {
    print('Invalid unit');
  }
}
