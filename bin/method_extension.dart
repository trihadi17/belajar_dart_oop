// Extension Method
//! adalah cara menambahkan method terhadap Class yang sudah ada, tanpa harus mengubah class tersebut.
//! Hal ini adang bermanfaat jika misal CLass nya adalah Class milik libray yang bukan kita yang membuatnya
// cara membuat Extension method hampir mirip membuat class namun perlu menambahkan kata kunci extension diikuti nama extensio lalu diikuti kata kunci on dan nama Class yang ingin kita tambahkan extension methodnya

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
    return 'Hi, my name is $fullName';
  }
}

//! Extension method
extension SayGoodByeOnPerson on Person {
  //-> Person merupakan class lain, tanpa harus mengubah isi dalam nya
  void sayGoodBye(String paramName) {
    print('Good Bye $paramName, from $name');
  }
}

void main() {
  //? Cara 1 Buat Object
  var person1 = Person();

  //* Manipulasi Field Pada Object
  person1.name = 'Tri Hadi Putra';
  person1.address = 'Pekanbaru';

  //! Pemanggilan method extension
  person1.sayGoodBye('Joko');
}
