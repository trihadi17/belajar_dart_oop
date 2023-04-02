// Access Modifier
// Secara default, saat kita membuat Field atau Method dalam sebuah class, maka semua Field dan Method tersebut bisa diakses oleh siapa saja
// Kadang kadang kita ingin menyembukan Field atau Method
// Untuk menyembunyikan akses Field atau method, kita bisa menambahkan '_' (underscore) diawal Field atau Methodnya
// Secara otomatis FIeld atau Method tersebut, hanya bisa dikases dari file tersebut //! (hanya bisa digunakan pada file yang sama) dan bisa diakses dari luar file

class Product {
  String? id;
  String? name;

  // Access modifier = Field atau method yang bisa diakses didalam satu file yang sama, tidak bisa diluar file berbeda
  int? _quantity;

  int? _getQuantity() {
    return _quantity;
  }

  //* Menambahkan toString() yaitu method bawaan dart
  String toString() {
    return 'Produt{id=$id, name=$name, quantity=$_quantity}';
  }
}

void main() {
  var product = Product();
  product.id = '1';
  product.name = 'Laptop';
  // bisa diakses karna didalam file yang sama
  product._quantity = 100;
  product._getQuantity();
}
