/* Employee Payroll System
 Implement an employee payroll system.
 Create a base Employee class with properties: name, id, and salary.
 Implement a method calculateSalary() in the base class.
 Create two subclasses:- FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.
 - PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute
 salary based on hours worked.
 */
void main() {
  Employee employee1 = Employee(name: 'Ahmed', id: 88, salary: 800);
  print('Salary of employee1 is ${employee1.calculateSalary()}\$');

  FullTimeEmployee employee2 =
      FullTimeEmployee(name: 'Mohamed', id: 99, salary: 800, bonus: 200);
  print('Salary of employee2 (Full-time) is ${employee2.calculateSalary()}\$');

  PartTimeEmployee employee3 =
      PartTimeEmployee(name: 'Ali', id: 9, hoursWorked: 6, hourlyRate: 100);
  print('Salary of employee3 (Part-time) is ${employee3.calculateSalary()}\$');
}

class Employee {
  String name;
  int id;
  double salary;

  Employee({required this.name, required this.id, required this.salary});

  double calculateSalary() {
    return salary;
  }
}

class FullTimeEmployee extends Employee {
  double bonus;

  FullTimeEmployee({
    required String name,
    required int id,
    required double salary,
    required this.bonus,
  }) : super(name: name, id: id, salary: salary);

  @override
  double calculateSalary() {
    return super.calculateSalary() + bonus;
  }
}

class PartTimeEmployee extends Employee {
  double hoursWorked;
  double hourlyRate;

  PartTimeEmployee({
    required String name,
    required int id,
    required this.hoursWorked,
    required this.hourlyRate,
  }) : super(name: name, id: id, salary: 0);
  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}
