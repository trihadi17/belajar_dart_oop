// Polymorphism
// adalah kemampuan object berubah bentuk menjadi bentuk lain
// polymorphism erat hubungannya dengan Inheritance

//class parent
class Employee {
  String name;
  Employee(this.name);
}

// class child turunan dari Employee
class Manager extends Employee {
  Manager(String name) : super(name);
}

//class child turunan dari Manager
class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

// method polymorphism
void sayHello(Employee employee) {
  print('Hello ${employee.name}');
}

void main() {
  // class employee mempunyai turunan manager dan vice president (bisa menggunakan var / Employee)
  // Employee = merupakan variable class parent/object  (memanggil langsugn class nya)
  Employee employee = Employee('hadi');
  print(employee);

  //class manager
  employee = Manager('hadi');
  print(employee);

  //class vice president
  employee = VicePresident('hadi');
  print(employee);

  //sayHello
  sayHello(Employee('hadi'));
  sayHello(Manager('hadi'));
  sayHello(VicePresident('hadi'));
}
