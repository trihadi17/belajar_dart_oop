// Enum
// merupakan fitur untuk membentuk tipe data yang sudah jelas nilai nya (mislanya : reguler, vip, premium)
// Untuk membuat Enum, kita bisa menggunakan kata kunci enum
//

//import file customer
import 'data/customer.dart';

void main() {
  /* CustomerLevel.vip = merupakan kita menngambil data enum yaitu vip */
  var customer = Customer('Eko', CustomerLevel.vip);
  print(customer.name);
  print(customer.level);

  /* Melihat list data enum */
  print(CustomerLevel.values);
}
