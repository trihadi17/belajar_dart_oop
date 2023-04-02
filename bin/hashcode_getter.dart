// Hashcode Getter
// adalah reprenstasi integer object kita, mirip toString yang merupakan represntasi String, hashCOde adalah representasi integer
// Hashcode sangat bermanfaat untuk membuat struktur data unique seperti HashMap, HashSet, dll, karena cukup menggunakan hashCode method untuk mendapatkan identitas unique object kita
// Secara defualt hashCode akan mengembalikan nilai integer sesuai data di memory, namun kita bisa  meng-override nya jika kita ingin

//Kontrak HashCOde Method
// Sebanyak apapun hashCode dipanggil, untuk object yang sama, harus menghasilkan data integer yang sama
// Jika ada 2 Object yang sama jika dibandikan menggunakan operator equals, maka nilai hashCode nya juga harus sama

//* Import file catgeory
import 'data/category.dart';

void main() {
  var category1 = Category('1', 'Laptop');
  var category2 = Category('1', 'Laptop');

  //* EQUALS OPERATOR
  print(category1 == category2);

  //* hashcode
  print(category1.hashCode);
  print(category2.hashCode);
}
