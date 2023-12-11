// Callable Class
// merupakan class yang bisa dipanggil seperti function
// Untuk mmebuat Callable Class, kita perlu menambahkan sebuah method bernama call() di class tersebut
// parameter dan Return Value dari Method tersebut bisa disesuaikan sesuai keinginan kita
// Setelah membuat objectnya, kita bisa langsung memanggil method call() tersebut menggunakan nama objectnya saja

class Sum {
  int first;
  int second;

  //Constructor
  Sum(this.first, this.second);

  /* Cara 1 (return value) */
  int call() {
    return first + second;
  }

  /* Cara 2 */
  /* call(String name){

  } */
}

void main() {
  var sum = Sum(10, 10);
  //* khsus call() tidak perlu memanggil method nya, cukup Objectnya saja
  print(sum());
}
