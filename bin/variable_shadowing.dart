// Variable Shadowing
//! adalah kejadian ketika membuat nama variable dengan nama yang sama di dalam satu scope
//! misalnya terdapat variable dengan nama 'name' dan ketika membuat constructor dengan parameter 'name'. Maka otomatis
//! parameter constructor akan mengambil nilai variable 'name' diatas dan kita tidak bisa mengakses variable diatas karna tertutupi oleh paramter constructor

class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  //! Constructor
  //? Nama Constructor harus sama dengan nama class, dan ketika memanggil object maka pertama kali dijalankan adalah constructor
  Person(String name, String address) {
    name = name; // field name tidak berubah
    address = address; //field address tidak berubah
  }
}

void main() {
  //? Untuk memanggil object kita harus mengisi paramaeter sesuai constructor, jika tidak akan error
  var person = Person('Hadi', 'Pekanbaru');
  print(person.name); // field name tidak berubah
  print(person.address); //field address tidak berubah
}
