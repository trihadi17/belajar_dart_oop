// Abstract Method
// Saat ita membuat class yang abstract, kita bisa membuat abstract method juga di dalam class abstract tersebut (hanya bisa dibuat di abstract class)
// Saat kita membuat sebuah abstract method, kita tidak boleh mmebuat block method untuk method tersebut (tidak ada body hanya sekedar nama class dan paramter)
// Abstract method harus/wajib di override di class child (deklarasi ulang )

//! import file
import 'data/animal.dart';

void main() {
  var cat = Cat();
  // inheritance dari class parent
  cat.name = 'Puss'; // mengubah field pada class
  cat.run();
}
