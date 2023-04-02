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

class Rectangle {
  //access modifier
  int _width = 1;
  int _length = 1;

  //getter
  //! jika kita memanggil rectangle.width / Object. maka otomatis akan memanggil getter ini
  int get width {
    // width merupakan nama variable/field
    return _width;
  }

  //* Bisa menggunakan expression body
  /* int get width => _width; */

  //setter
  //! jika kita mengubah rectangle.width = 1 . maka otomatis akan memanggil setter ini
  set width(int value) {
    //* disarankan jika menggunakan setter harus ada validasi, jika mengambil saja disarnkan tidak memakai getter setter
    if (value >= 1) {
      _width = value;
    }
  }

  //* Bisa menggunakan expression body
  /* set width(int value) => _width = value; */

  //getter
  int get length {
    return _length;
  }

  //setter
  set length(int value) {
    //* disarankan jika menggunakan setter harus ada validasi, jika mengambil saja disarnkan tidak memakai getter setter
    if (value > 1) {
      _length = value;
    }
  }
}
