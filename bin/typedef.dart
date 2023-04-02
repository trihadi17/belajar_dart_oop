// Typedef (menduplikasi class)
// merupakan fitur dimana kita bisa membuat alias untuk tipe data lainnya
// Ini cocok ketika misal terdapat class dengan nama yang sama, sehingga kita bisa menggunakan alias untuk nama lain
// Atau kita bisa mempersingkat nama class yang panjang dengan alias

//Typedef untuk function
// typedef juga bisa digunakan untuk embuat alias untuk Function
// Namun perlu diperhatikan, sangat direkomendasikan tetap mendeklarasikan Function menggunakan deklarasi function, dibandikan menggunakan typedef

//Class parent
class Sum {
  int first;
  int second;

  Sum(this.first, this.second);

  int call() {
    return first + second;
  }
}

//!TYPEDEF CLASS
//* Total adalah alias dari Sum, jadi kita bisa  menggunakan isi semua class sum dengan memanggil Object 'Total'
typedef Total = Sum;
//* Jumlah adalah alias dari Sum, jadi kita bisa  menggunakan isi semua class sum dengan memanggil Object 'Jumlah'
typedef Jumlah = Sum;

//!TYPEDEF FUNCTION
//* Membuat aliasa function
typedef Filter = String Function(String);

// Filter merupakan alias dari function
void sayHello(String name, Filter filter) {
  print('Hello ${filter(name)}');
}

void main() {
  //? SUM
  var sum = Sum(10, 10);
  //* khsus call() tidak perlu memanggil method nya, cukup Objectnya saja
  print(sum());

  //? Total
  var total = Total(10, 10);
  //* khsus call() tidak perlu memanggil method nya, cukup Objectnya saja
  print(total());

  //? Jumlah
  var jumlah = Jumlah(10, 10);
  //* khsus call() tidak perlu memanggil method nya, cukup Objectnya saja
  print(jumlah());

  //? typedef function
  sayHello('hadi', (value) => value.toUpperCase());
}
