/* 4. Maps, Functions & User Input
Create a Dart program that:
- Declares a `Map<String, int>` where keys are fruit names and values are their
prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a
given fruit.
- If the fruit is not found, return -1.
Call the function inside `main()` and print the result.
 */
void main() {
  Map<String, int> fruitPrices = {
    'Apple': 40,
    'Orange': 20,
    'Peach': 40,
    'Strawberry': 50,
  };
  print(getPrice(fruitPrices, 'Apple'));
}

int getPrice(Map<String, int> fruitPrices, String fruitName) {
  if (fruitPrices.containsKey(fruitName)) {
    return fruitPrices[fruitName]!;
  } else {
    return -1;
  }
}
