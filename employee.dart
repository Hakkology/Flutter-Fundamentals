class Employee {
  final String name;
  final String department;
  final double salary;

  Employee(this.name, this.salary, this.department) {}
}

void PrintEmployeeDepartment(Employee _employee) {
  print(_employee.department);
}
