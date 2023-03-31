// This Keyword (this)
//! adalah kata kunci 'this' yang digunakan untuk mengakses object saat ini atau mengakses method
//! this ini bisa digunakan untuk mengatasi permasalahan variable shadowing (pesamaan nama di dalam satu scope)

class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  //! Constructor
  //? Nama Constructor harus sama dengan nama class, dan ketika memanggil object maka pertama kali dijalankan adalah constructor
  Person(String name, String address) {
    // this.name adalah variable diatas, sedangkan name = parameter constructor
    this.name = name;
    //this.address adalah variable diatas, sedangkan address = parameter constructor
    this.address = address;
  }
}

void main() {
  //? Untuk memanggil object kita harus mengisi paramaeter sesuai constructor, jika tidak akan error
  var person = Person('Hadi', 'Pekanbaru');
  print(person.name); // field name berubah
  print(person.address); //field address berubah
}
