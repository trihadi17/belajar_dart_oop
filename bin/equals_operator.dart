// Equals Operator (==)
// Secara default operator (==) adalah milik class Object, implementasinya jika kita menggunakan operator == milik class Object adalah akan melakukan pengecekan kesamaan object dari lokasi di memory
// Kadang-kadang, kita ingin mengimplemnetasikan logika untuk membandingkan object
// Untuk hal ini, kita melakukan override operator == yang ada di class Object

//* Import data category
import 'data/category.dart';

void main() {
  var category1 = Category('1', 'Laptop');
  var category2 = Category('1', 'Laptop');

  //* EQUALS OPERATOR
  print(category1 == category2);
}
