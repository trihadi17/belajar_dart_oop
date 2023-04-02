// Error
// Selain Exception, ada jenis kesalahan lagi yaitu error
// Berbeda dengan exception, Error adalah jenis kesalaha yang harus dihindari dan jika terjadi, lebih baik segera hentik programnya
// Error biasanya terjadi karena ada kesalahan pada kode program kita
// Contoh, kita mengakses index yang salah di List (misalnya index nya cuman 2 tpi kita akses index ke 5 yang merupakan luar jangkauan list), sehingga tidak pas menggunakan exception melainkan pakai 'error'

void main() {
  var list = ['Tri', 'Hadi', 'Putra'];

  //* tidak tepat menggunakan exception karna ini merupakan kesalahan dari program kita
  //print(list[10]);

  //* Kita bisa menggunakan validasi jika tidak mau terjadi error
  if (list.length > 10) {
    print(list[10]);
  }
}
