// FIELD
// fields / Properties / Attributes adalah data yang bisa disisipkan di dalam Object

class Person {
  //Wajib dimasukkan salah satu, karna non nullable
  String name = 'Guest';

  //nullable (boleh tidak diisi)
  String? address;

  //final (tidak boleh diubaj)
  final String country = 'Indonesia';
}

void main() {
  //? Cara 1 Buat Object
  var person1 = Person(); // Person() -> Object dari class Person
  // mengambil data field pada object
  print(person1.name);
  print(person1.address);
  print(person1.country);

  //* Manipulasi Field Pada Object
  person1.name = 'Tri Hadi Putra';
  person1.address = 'Pekanbaru';
  //  person1.country = 'Singapore'; tidak bisa mengubah final field

  print(person1.name);
  print(person1.address);
  print(person1.country);

  //? Cara 2
  Person person2 = Person();
  print(person2);
}
