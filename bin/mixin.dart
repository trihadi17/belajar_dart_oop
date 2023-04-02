//* Mixin (copy paste dengan cara elegan tanpa pewarisan)
// merupakan reusable code yang bisa digunakan di kelas lain tanpa harus terkendala dengan pewarisan
// mixin mirip melakukan copy paste di beberapa tempat, namun dengan cara yang lebih baik
// Dengan Mizin, kita bisa membuat kode yang sama pada bebrapa class
// Satu Class bisa menambah lebih dari satu mixin, sama seperti interface
// Untuk membuat Mixin, kita bisa menggunakan kata kunci mixin
// Untuk menggunakan Mixin, kita bisa menggunakan kata kunci 'with', diikuti dengan Mixin nya

//* Membatasi Mixin
// Secara default, semua class bisa  menggunakan Mixin
// Namun jika kita ingin membatasi hanya class turunan tertntu, kita bisa tambahkan kata kunci 'on' diikuti dengan class yang kita batasi pada Mixin nya

//* Import file multimedia
import 'data/multimedia.dart';

void main() {
  var video = VideoAudio();
  video.name = 'Belajar Dart';
  // play () adlah karna mixin dari Mixin Playable
  video.play();
  // Stop () adlah karna mixin dari Mixin Stopable

  video.stop();
}
