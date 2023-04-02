//! ASAL MUASAL GETTER dan SETTER

// Encapsulation
// Artinya memastika data sensitif pada sebuah Object tersembunyi dari akses luar
// Hal ini bertujuan agar kita bisa menjaga agar data sebuah Object tetap baik dan valid
// Untuk mencapai ini, kita biasanya kita akan membuat semua field yang tidak bisa diakses dari luar (dengan menambah underscore '_')
// Agar bisa diubah, kita akan menyediakan method untuk mengubah (SETTER) dan mendapatkan (GETTER) field tersebut

//!

// Gettter dan Setter
// Proses encapsulation sudah dibuat standarisasinya, dimana kita bisa menggunakan Getter dan Setter method
//! Getter adalah function yang dibuat untuk mengambil data field
//! Setter adalah function untuk mengubah data field
//? Untuk Getter, kita bisa menggunakan kata kunci 'get'
//? Untuk Setter, kita bisa menggunakan kata kuncti 'set
//! jika isi Getter dan Setter hanya melakukan redirect data ke Field, tidak disarankan memakai ini cukup langsung saja menggunakan Field

//! Import file rectangle (cara memanggil getter dan setter)
import 'data/rectangle.dart';

void main() {
  //? 1. Panggil Object
  var rectangle = Rectangle();

  //? Contoh panggil getter setter
  //* rectangle.width  = 100 adalah memanggil setter
  rectangle.width = 100;
  //* rectangle.width adalah memanggil getter
  print(rectangle.width);
  // rectangle.width (100); error karna getter dan setter

  rectangle.length = 200;
  print(rectangle.length);
}
