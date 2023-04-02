// Type Check dan Cast
// Saat menggunakan polimorfisme, kadang kita ingin melakukan konversi tipe data misal (Employee dari class Employee) ke tipe data aslinya
// Namun, agar aman, sebelum melakukan konversi, pastikan kita melakukan type check(pengecekan tipe data), dengan menggunakan kata kunci 'is'
// Hasil operator 'is' adalah boolean, 'true' jika tipe data sesui dan 'false' jika tidak sesuai
// Untuk melakukan konversi tipe data Object, kita bisa gunakan kata kunci 'as' yaitu sebagai apa

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
  //type check dan konversi data dari employee -> ke vp
  // is digunakan  untuk mengecek apakah vicepresident turunan dari employee atau tidak
  if (employee is VicePresident) {
    //? sebenarnya degan menggunakan employee is VicePresident dart otomatis akan langsung konversi data tersebut tanpa harus dituliskan secara manual
    //konversi data sacara manual menggunakan 'as'
    VicePresident vicePresident = employee as VicePresident;
    print('Hello VP ${employee.name}');
  } else if (employee is Manager) {
    Manager manager = employee as Manager;
    print('Hello Manager ${employee.name}');
  } else {
    print('Hello ${employee.name}');
  }
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
