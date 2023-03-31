// Inheritance
// adalah kemampuan untuk menurunkan sebuah clas ke class lain
// kita membuat class Parent dan class Child
// Class child hanya punya 1 Class Parent, Sedangkan class Parent bisa memiliki banyak class Child
// Semua field dan method yang ada pada class Parent, akan otomatis dimiliki oleh class Child
// Untuk melakukan inheritance, di class child, kita harus menggunakan kata kunci extends lalu diikuti dengan nama class parent nya

// Class Manager = Class Parent
class Manager {
  String? name;

  void sayHello(String name) {
    // $name = parameter function/method, ${this.name} = variable/field String? name
    print('Hello $name, my name is ${this.name}');
  }
}

// VicePresident = class child (otomatis yang dimiliki Manager menjadi milik VicePresident), extends = Kata kunci, Manager = class parent
class VicePresident extends Manager {}

void main() {
  var manager = Manager();
  manager.name = 'Hadi';
  manager.sayHello('Putra');

  var vp = VicePresident();
  vp.name = 'Hadi';
  vp.sayHello('Putra');
}
