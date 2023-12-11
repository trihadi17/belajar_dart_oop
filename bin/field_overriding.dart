// Field Overriding
// adalah kemampuan mendeklarasikan ulang field di child class yang sudah ada di parent class
// saat kita melakukan proses overriding tersebut, otomatis ketika kita membuat object dari class child, method yang di class parent tidak bisa diakses lagi
// saat melakukan field overriding, kita harus pastikan deklarasi fieldnya harus sama dengan di parent classnya

class Person {
  String name = 'Person';

  void sayHello(String name) {
    print(
        'Hi ${name}, my name is ${this.name}'); //-> maka this.name itu yang diambil adalah name di OtherPerson karna field overriding ketika dipanggil object OtherPerson(), tapi kalau dipanggil object Person(), maka hasil fieldnya yang terpanggil punya parent
  }
}

class OtherPerson extends Person {
  // field overriding -> mendeklarasikan ulang
  String name = 'Other Person';
}

void main() {
  var person = Person();
  print(person.name);

  var otherPerson = OtherPerson();
  print(otherPerson
      .name); // hasilnya name yang diambil dari class child bukan parent, karna sudah field overriding, tetapi method nya masih kepemilikan dari parent
}
