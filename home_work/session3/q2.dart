/* 2. Grocery List Manager:
Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values.
 */
import 'dart:io';

void main() {
  List<String> groceryList = [];
  String list = addToList(groceryList);
  print(list);
  // removeFromList(groceryList);
  // displayList(groceryList);
}

String addToList(List<String> groceryList) {
  print('Enter an item to add');
  String? item = stdin.readLineSync();
  groceryList.add(item!);
  print('Grocery items is: $groceryList');
  return addToList(groceryList);
}

void removeFromList(List<String> groceryList) {
  print('Enter an item to remove');
  String? item = stdin.readLineSync();
  if (item != null && groceryList.contains(item)) {
    groceryList.remove(item);
    print('Grocery items is: $groceryList');
  } else {
    print('Enter a valid item');
  }
}

void displayList(List<String> groceryList) {
  if (groceryList.isEmpty) {
    print('List is empty');
  } else {
    print(groceryList);
  }
}




















// void displayList(){

//   List<String> itemList = ['Rice', 'Pasta', 'Water'];
//   if (itemList == null) {
//     print('List is empty');
//   } else {
//     print(itemList);
//   }
// }