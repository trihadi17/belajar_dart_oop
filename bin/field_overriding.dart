// Field Overriding
// adalah kemampuan mendeklarasikan ulang field di child class yang sudah ada di parent class
// saat kita melakukan proses overriding tersebut, otomatis ketika kita membuat object dari class child, method yang di class parent tidak bisa diakses lagi
// saat melakukan field overriding, kita harus pastikan deklarasi fieldnya harus sama dengan di parent classnya

class Person {
  String name = 'Person';

  void sayHello(String name) {
    print('Hi ${name}, my name is ${this.name}');
  }
}

class OtherPerson extends Person {
  String name = 'Other Person';
}

void main() {
  var person = Person();
  print(person.name);

  var otherPerson = OtherPerson();
  print(otherPerson.name);
}
