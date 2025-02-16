/* 3. To-Do List App:
Create a to-do list program using a List where each item has a description, due date, and
completion status (as bool). Implement methods to add, remove, and update tasks, including the
use of for-each loops
 */
// import 'dart:io';

import 'dart:io';

void main() {
  Map<String, Map<String, dynamic>> ToDo = {};
  print('Enter task name:');
  String taskName = stdin.readLineSync()!;

  print('Enter task description:');
  String description = stdin.readLineSync()!;

  print('Enter the deadline:');
  String dueDate = stdin.readLineSync()!;

  print('Is the todo completed? (yes/no):');
  String completedInput = stdin.readLineSync()!;
  bool completed = completedInput.toLowerCase() == 'yes';

  ToDo[taskName] = {
    'description': description,
    'dueDate': dueDate,
    'complated': completed,
  };
  print(ToDo);
}
void addTask (ToDo){
  
}
