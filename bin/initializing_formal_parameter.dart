// initializing formal parameter
//? Kadang saat membuat ocnstructor, biasanya kita membuat parameter yang hanya digunakan untuk mengubah nilai yang ada di field
//? Untu kasus ini, kieta bisa menggunaan fitur Frmal Paramter, dimana pada parameter kita bisa langsung sebutkan field mana yang akan diubah
//! Formal Parameter hanya bisa digunakan di Cosntructor, tidak digunakan di Method
//? caranya kita cukup ubah paramternya dengan menggunakan this.namaField nya, tanpa perlu menggunakan tipe data

class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  //! Constructor
  //? Nama Constructor harus sama dengan nama class, dan ketika memanggil object maka pertama kali dijalankan adalah constructor
  //* this.name, this.address adalah Formal Parameter. Mengambil nilai pada field sebagai parameter
  //! Body Constructor itu optinal, boleh dihapus boleh dibuat
  Person(this.name, this.address);
  /*  Person(String name, String address) {
    /* Pada Umumnya
    this.name = name;
    this.address = address; */
  } */
}

void main() {
  //? Untuk memanggil object kita harus mengisi paramaeter sesuai constructor, jika tidak akan error
  var person = Person('Hadi', 'Pekanbaru');
  print(person.name); // field name berubah
  print(person.address); //field address berubah
}
