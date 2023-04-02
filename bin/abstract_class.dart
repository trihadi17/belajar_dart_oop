// Abstract Class
// Saat kita membuat class, kita bisa menjadikan sebuah lass sebagai abstract class
// Abtract class artinya, class tersebut tidak bisa dibuat sebagai object secara langsung, hanya bisa diturunkan (hanya sebagai parent saja)
// Untuk membuat sebuah class menjadi abstract, kita bisa menggunakan kata kunci 'abstract' sebelum kata kunci 'class'
// Dengan demikian abstract class bisa kita gunakan sebagai kontrak untuk class child

//! Import file
import 'data/location.dart';

void main() {
  // var location = Location(); // erorr karna abstract class
  var city = City('Jakarta');
  print(city.name);
}
