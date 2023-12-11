// Polymorphism
// adalah kemampuan object berubah bentuk menjadi bentuk lain
// polymorphism erat hubungannya dengan Inheritance

//class parent
class Employee {
  String name;
  // Constructor
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

void main() {
  // class employee mempunyai turunan manager dan vice president (bisa menggunakan var / Employee)
  // Employee = merupakan variable class parent/object (memanggil langsugn class nya)

  //! POLA POLYMORPHISM (Perubahan Bentuk)
  Employee employee = Employee('hadi');
  print(employee);

  //class manager
  employee = Manager('hadi');
  print(employee);

  //class vice president
  employee = VicePresident('hadi');
  print(employee);
}
