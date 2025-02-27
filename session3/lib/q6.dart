/* 6. Working with Maps - Student Details:
- Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
and remove entries from the map, printing the map after each operation.
- Task 2: Iterate over the map and print each key-value pair.
 */
void main() {
  Map<String, dynamic> students = {
    'name': 'Ahmed',
    'age': 25,
    'grade': 99,
  };
  students['city'] = 'Cairo';
  print('My map after adding is: $students');

  students['age'] = 23;
  print('My map after updating is: $students');

  students.remove('grade');
  print('My map after reomving is: $students');

  students.forEach((String, dynamic) {
    print('$String: $dynamic');
  });
}
