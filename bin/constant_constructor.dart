// Constant Constructor
// Saat kita mmebuat Class yang tidak pernah berubah datanya (immutable data), ada baiknya kita buat Constructor nya dalam bentuk constant
// Untuk membuat constant constructor kita bisa gunakan kata kunci 'const'
// Keuntungan saat menggunakan Constan Constructor adalah ketika kita membuat constant Object, secara otomatis objetct yang sama akan digunakan
// Variable pada constant constructor harus final fields

class ImmutablePoint {
  // field harus final
  final int x;
  final int y;

  //Const constructor dengan konsep formal parameter
  const ImmutablePoint(this.x, this.y);
}

void main() {
  /* Tanpa menambahkan const pada object nya */
  var point1 = ImmutablePoint(10, 10);
  var point2 = ImmutablePoint(10, 10);

  // hasilnya false dikarenkan di buat object baru dan disimpan memori yang berbeda
  print(point1 == point2);

  /*  menambahkan const pada object nya */
  var point3 = const ImmutablePoint(10, 10);
  var point4 = const ImmutablePoint(10, 10);

  // hasilnya true
  print(point3 == point4);
}
