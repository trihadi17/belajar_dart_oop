// Access Modifier
// Secara default, saat kita membuat Field atau Method dalam sebuah class, maka semua Field dan Method tersebut bisa diakses oleh siapa saja
// Kadang kadang kita ingin menyembukan Field atau Method
// Untuk menyembunyikan akses Field atau method, kita bisa menambahkan '_' (underscore) diawal Field atau Methodnya
// Secara otomatis FIeld atau Method tersebut, hanya bisa dikases dari file tersebut //! (hanya bisa digunakan pada file yang sama) dan bisa diakses dari luar file

//! Import file product
import 'data/product.dart';

void main() {
  var product = Product();
  product.id = '1';
  product.name = 'Laptop';
  // tidak bisa diakses karna di file yang berbeda
  // product._quantity = 100; //error
  //product._getQuantity(); //error
}
