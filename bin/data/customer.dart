//membuat enum

enum CustomerLevel { reguler, premium, vip }

class Customer {
  String name;
  //Akses tipe data enum
  CustomerLevel level;

  Customer(this.name, this.level);
}
