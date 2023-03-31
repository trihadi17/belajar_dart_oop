// Named Constructor
//! Constructor hanya bisa dibuat satu saja dengan nama yang sama. Sama seperti function dan method tidak bisa dibuat lebih dari 1 dengan nama yang sama
//! Dengan menggunakan Named Constructor kita bisa membuat Constructor lebih satu dengan syarat menggunakan nama constructor berbeda-beda
//! cara membutnya yaitu dengan 'namaClass.namaConstructor'
//! named constructor boleh lebih dari satu asalkan namanya berbeda
//! kita bisa mengakses named constructor dengan cara 'Class.namedConstructor()'

class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  //! Constructor
  //? Nama Constructor harus sama dengan nama class, dan ketika memanggil object maka pertama kali dijalankan adalah constructor
  //* this.name, this.address adalah Formal Parameter. Mengambil nilai pada field sebagai parameter
  //! Body Constructor itu optinal, boleh dihapus boleh dibuat

  // Constructor 1
  Person(this.name, this.address);

  //Constructor 2 (tanpa body)
  Person.withName(this.name);

  //Constructor 3 (dengan body)
  Person.withAddress(this.address) {}
}

void main() {
  //? memanggil constructor biasa (constructor 1)
  var person = Person('Hadi', 'Pekanbaru');
  print(person.name);
  print(person.address);

  //? memanggil named constructor (constructor 2)
  var personWithName = Person.withName('Tri');
  print(personWithName.name);
  print(personWithName.address);

  //? memanggil named constructor (constructor 3)
  var personWithAddress = Person.withAddress('Riau');
  print(personWithAddress.name);
  print(personWithAddress.address);
}
