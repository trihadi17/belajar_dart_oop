// Static
// merupakan sebuah kata kunci yang digunakan untuk membuat field dan method yang bisa diakses tanpa harus membuat objectnya
// saat kita membuat field atau method yang static artinya dia secara otomatis bisa diakses oleh object manapun, oleh kerana itu perlu hati-hati ketika membuat field atau method static
// field atau method static bisa diakses oleh Method yang tidak static
// Namun field atau method static tidak bisa mengakses field atau method yang tidak static
// biasanya static digunakan untuk membuat utility (helper/membantu)
// Untuk mengkases static field atau method, kita bisa langsung menggunakan nama class diikuti dengan titik dan static Field atau methodnya
//! biasnaya static field nya itu di set 'final' biar tidak bisa diubah

class Application {
  //* Static field
  static final String name = 'Belajar Dart OOP';
  static final String author = 'Eko Kurniawan Khannedy';

  //* Static Method
  static int sum(int first, int second) => first + second;
}

void main() {
  //* Pemanggilan static field
  print(Application.name);
  print(Application.author);

  //* Pemanggilan static method
  var result = Application.sum(10, 10);
  print(result);
}
