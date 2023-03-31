// Constructor
//! adalah method yang akan dipanggil saat pertama kali dibuat
// nama constructor harus sama dengan class dan tidak membutuhkan kata kunci void atau return value
// kektika menambahkan constructor pada class, maka saat membuat Object baru, kita wajib mengikuti parameter yang ada di constructor
//!di Dart tidak bisa membuat constructor lebih dari 1 pada satu class

class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  //! Constructor
  //? Nama Constructor harus sama dengan nama class, dan ketika memanggil object maka pertama kali dijalankan adalah constructor
  Person(String paramName, String paramAddress) {
    name = paramName;
    address = paramAddress;
  }
}

void main() {
  //? Untuk memanggil object kita harus mengisi paramaeter sesuai constructor, jika tidak akan error
  var person = Person('Hadi', 'Pekanbaru');
  print(person.name);
  print(person.address);
}
