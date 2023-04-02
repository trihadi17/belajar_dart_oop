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

//* class parent
abstract class Multimedia {}

//* Membuat Mixin (tanpa membatasi)
mixin Playable {
  String? name;

  void play() {
    print('Play $name');
  }
}

mixin Stopable {
  String? name;

  void stop() {
    print('Stop $name');
  }
}

//* Membuat mixin dibatasi (hanya copy paste diseluruh kelas multimedia)
mixin Pause on Multimedia {
  String? name;

  void play() {
    print('Play $name');
  }
}

//* Penggunaan Mixin (menggunakan kata kunci 'with')
class Video with Playable, Stopable {}

class Audio with Playable, Stopable {}

//* Penggunaan Mixin dengan dibatasi
class VideoAudio extends Multimedia with Pause, Stopable {}
