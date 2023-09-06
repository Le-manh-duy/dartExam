class Employee {
  int id;
  String fullName;
  DateTime birthday;
  String address;
  String phoneNumber;

  Employee({
    required this.id,
    required this.fullName,
    required this.birthday,
    required this.address,
    required this.phoneNumber,
  });
}

class Company {
  List<Employee> employees = [];

  void addNewEmployee(Employee employee) {
    employees.add(employee);
  }

  List<Employee> getAllEmployees() {
    return employees;
  }

  void updateEmployee(int id, Employee updatedEmployee) {
    final employeeIndex = employees.indexWhere((e) => e.id == id);
    if (employeeIndex != -1) {
      employees[employeeIndex] = updatedEmployee;
    }
  }

  void showAllEmployees() {
    for (Employee employee in employees) {
      print("Employee ID: ${employee.id}");
      print("Full Name: ${employee.fullName}");
      print("Birthday: ${employee.birthday.toLocal()}"); // Convert to local time
      print("Address: ${employee.address}");
      print("Phone Number: ${employee.phoneNumber}");
      print("\n");
    }
  }
}

void main() {
  Company company = Company();

  company.addNewEmployee(Employee(
    id: 1,
    fullName: "Le Manh Duy",
    birthday: DateTime(1990, 5, 15),
    address: "Ha noi , viet nam",
    phoneNumber: "098765",
  ));

  company.addNewEmployee(Employee(
    id: 2,
    fullName: "Nguyen Van Hien",
    birthday: DateTime(1985, 8, 25),
    address: "sai gon , viet nam",
    phoneNumber: "12345678",
  ));

  company.showAllEmployees();

  company.updateEmployee(1, Employee(
    id: 1,
    fullName: "Le Manh Duy",
    birthday: DateTime(1990, 5, 15),
    address: "789 Oak St, Village",
    phoneNumber: "555-4321",
  ));

  company.showAllEmployees();
}
