// Redirecting Constructor
//! Saat membuat Named Constructor, kita bisa memanggil Default Constructor (constructor biasa) atau istilah nya Redirecting Constructor
//! cara membuat Redirecting Constructor adalah ' Person.withName(String name) : this(name, '') '
//! this() adalah dianggap mengakses Default Constructor.
//! pada Redirecting Constructor ini kita tidak bisa menambahkan body
//! tidak hanya pada Default constructor, kita juga bisa redirecting constructor ke named constructor

class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  //! Constructor
  //? Nama Constructor harus sama dengan nama class, dan ketika memanggil object maka pertama kali dijalankan adalah constructor
  //* this.name, this.address adalah Formal Parameter. Mengambil nilai pada field sebagai parameter
  //! Body Constructor itu optinal, boleh dihapus boleh dibuat

  // Constructor 1
  Person(this.name, this.address) {}

  //Redirecting Constructor (Ke Default Constructor)
  // this(name, '') -> redirecting ke Default Constructor (ada 2 parameter nya yaitu 'this.name & this.address')
  // dimana 'name' -> parameter named constructor
  Person.withName(String name) : this(name, 'No Address');

  //Redirecting Constructor (Ke Default Constructor)
  Person.withAddress(String address) : this('No Name', address);

  //Redirecting Constructor (Ke Default Constructor)

  // this(name) -> redirecting ke Named Constructor (withName) (ada 1 parameter nya yaitu 'String name')
  Person.redirectNamedConstructor() : this.withName('Putra');
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

  //? memanggil named constructor (constructor 3)
  var personRedirectNamedConstructor = Person.redirectNamedConstructor();
  print(personRedirectNamedConstructor.name);
  print(personRedirectNamedConstructor.address);
}
