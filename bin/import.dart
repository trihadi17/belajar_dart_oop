// Import
// adalah kemmapuan untuk menggunaan class, function atau variable yang beda di file yang berbeda
// Import sangat cocok digunaakn ketika kode porgram kita sudah banyak dan ditempatkan di banyak file
//

//! import class category (data/category.dart)
import 'data/category.dart';

void main() {
  //import Object dari file yang berbeda
  var category = Category('1', 'Laptop');
  print(category.id);
  print(category.name);
}
