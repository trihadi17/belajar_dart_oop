// Abstract Class
// Saat kita membuat class, kita bisa menjadikan sebuah lass sebagai abstract class
// Abtract class artinya, class tersebut tidak bisa dibuat sebagai object secara langsung, hanya bisa diturunkan (hanya bisa mmebuat object pada class child saja)
// Untuk membuat sebuah class menjadi abstract, kita bisa menggunakan kata kunci 'abstract' sebelum kata kunci 'class'
// Dengan demikian abstract class bisa kita gunakan sebagai kontrak untuk class child

// Abtract class (class parent) != tidak bisa dijadikan object
abstract class Location {
  String? name;
}

// Class child
class City extends Location {
  City(String name) {
    this.name = name;
  }
}
