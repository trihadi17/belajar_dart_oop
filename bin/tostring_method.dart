// ToString Method (method dari object bawaan dart)
// Sebelumnya kita sudah bahas bahwa parent class untuk semua class kecuali null adalah Object
// Didalam Object, terdapat method bernama toString(), metnod ini merupakan method untuk representasi String dari Object
// Contohnya, saat kita menggunakan function print(object), sebenarnya yang dipanggil adalah print(object.toString())
// Kita bisa  meng-override method toString() jika ingin mengimplementasikan representasi data String dari Class yang kita buat

//* Import file product
import 'data/product.dart';

void main() {
  var product = Product();
  product.id = '1';
  product.name = 'Laptop';

  //* Pemanggilan jika menggunakan method toString()
  //cara 1 (umumnya)
  print(product.toString());
  //cara 2 (efisien) = otomatis terpanggil toString nya
  print(product);
}
