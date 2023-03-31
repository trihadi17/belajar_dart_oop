// iniatilizer list
//! adalah tempat dimana kita bisa mengubah field pada Object, sebelum block body Constructor
//! hal ini menjadi lebih mudah dibanding mengubah field didalam block Constructor
//! keunggulan nya adalah tidak terhalangi oleh variable shadowing

class Customer {
  String firstName = '';
  String lastName = '';
  String fullName = '';

  Customer(this.fullName)
      /* menggunakan initializer list dengan menambahkan tanda ':' lalu diikut dengan field yang akan diubah diluar block constructor  */
      : firstName = fullName.split(" ")[0],
        lastName = fullName.split(" ")[1] {
    /* Sintak pada Umumnya (mengubah field dalam block constructor)
    this.firstName = fullName.split(" ")[0];
    this.lastName = fullName.split(" ")[1]; */

    print('Create New Customer');
  }
}

void main() {
  var customer = Customer('Tri Hadi');
  print(customer.fullName);
  print(customer.firstName);
  print(customer.lastName);
}
