// No Such Method
//? -> merupakan sebuah method yang terdapat di class Object yang bisa kita override untuk mendetesi atau bereaksi ketika sebuah metod yang tidak ada dipanggi
// no such method hanya bis adigunakan ketika tipe objectnya adalah dynamic atau sebuah abstract class

// No Such Method untuk Abtract Class
// Salah satu penggunaan NosuchMethod yang biasanya digunakan adalah sebagai implementasi Abstract Class
// Dengan menggunakan Nosuchmethod, kita tidak perlu mengimplementasikan method yang terdapat di abstract class lagi

//! Noted:
//! Nosuch method bisa menggunakan abstract class atau interface

//* Import file repository
import 'data/repository.dart';

void main() {
  //* jika tidak menggunakan abtract class
  //dynamic repository = Repository('products');
  //* jika tidak menggunakan abtract class
  var repository = Repository('products');

  repository.id('1');
  repository.name('Laptop');
  repository.quantity(100);
  repository.location('Jakarta');
}
