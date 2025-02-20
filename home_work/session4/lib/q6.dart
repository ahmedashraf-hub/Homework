/* 6. Null Safety, Encapsulation & Classes
Create a class `Person` with the following attributes:
- `String name`
- `int? age` (nullable)
- `bool isStudent` (default is false)
Implement:
- A constructor that initializes `name` and `age`.
- A method `displayInfo()` that prints the person's details.
In `main()`, create an instance of `Person` and call `displayInfo()`.
 */

void main() {
  Person person = Person(name: 'Ahmed', age: 25);
  person.displayInfo();
}

class Person {
  String name;
  int? age;
  bool isStudent = false;
  Person({required this.name, this.age, this.isStudent = false});
  displayInfo() {
    print(
        "Person's details: Name: $name, Age: ${age ?? 'Not specified'}, Is Student: $isStudent");
  }
}
