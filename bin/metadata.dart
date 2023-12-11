//* Metadata
// fitur yang digunakan untuk menambah informasi tambahan pada kode program yang kita buat
// Untuk menambahkan informasi tambahan ke dalam kode program kita, kita bisa menggunakan Annotation yang dimulai dengan karakter '@' lalu diikuti dengan 'constant' atau constant concstructor

//* Manfaat metadata
// Saat ini, metadata mungkin tidak terlihat begitu berguna
// Namun saat nanti kita sudah belajar tentang Reflection, maka kita akan bisa tahu manfaat yang bisa kita dapat ketika menggunakan Metadata

//* Standar Annotation
//? @Deprecated (constant constructor) -> menandai bahwa kode tersebut sudah tidak direkomendasikan digunakan
//? @override (constant) -> menandai bahwa field atau method tersebut merupakan overridng dari parentnya

//* Membuat Annotation (custom)
// membuat annotation sanget mudah, kita bisa membuat constant atau bisa membuat Class dengan menggunakan Constant Constructor

//! Noted : Annotation bisa digunakan dimana mana

class Sample {
  @override
  String toString() {
    return 'Sample';
  }

  @Deprecated('Do not use this anymore')
  void doNotUseThis() {}
}

//* Membuat Annotation (custom)
class Todo {
  //? constant
  final String todo;

  //? constant constructor
  const Todo(this.todo);
}

@Todo('Will be implemented next release')
class Application {
  @Todo('Will be implemented next release')
  String? name;

  @Todo('Will be implemented next release')
  void featureA() {}
}

void main() {}
