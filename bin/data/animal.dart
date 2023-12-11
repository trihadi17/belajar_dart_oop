// Abstract Method
// Saat ita membuat class yang abstract, kita bisa membuat abstract method juga di dalam class abstract tersebut (hanya bisa dibuat di abstract class)
// Saat kita membuat sebuah abstract method, kita tidak boleh mmebuat block method untuk method tersebut (tidak ada body hanya sekedar nama class dan paramter)
// Abstract method harus/wajib di override di class child (deklarasi ulang )

//! Abtract class
abstract class Animal {
  String? name;

  //! Abstract method
  void run();
}

class Cat extends Animal {
  //! WAJIB MEMASUKKAN METHOD ABSTRACT DI SETIAP CHILD YANG ADA PADA PARENT CLASS
  void run() {
    print('Cat $name is running');
  }
}
