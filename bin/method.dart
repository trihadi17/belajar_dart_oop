// Method
// method adalah function yang terdapat di dalam class, kita bisa menambahkan return value dan parameter di method

class Person {
  //! Variable

  //Wajib dimasukkan salah satu, karna non nullable
  String name = 'Guest';

  //nullable (boleh tidak diisi)
  String? address;

  //final (tidak boleh diubaj)
  final String country = 'Indonesia';

  //! Method (Bisa mengakses variable atau data di satu block class)
  void sayHello(String paramName) {
    print('Hello $paramName, My Name is $name');
  }

  void hello() {
    print('Hello, my name is $name');
  }

  String getName(String fullName) {
    print(fullName);
    return 'Hi $fullName, my name is $name';
  }
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

  //! memanggil method dalam object
  person1.sayHello('hadi');
  person1.hello();
  var getFullName = person1.getName('Tiya Wulandari');
  print(getFullName);

  //? Cara 2
  Person person2 = Person();
  print(person2);
}
