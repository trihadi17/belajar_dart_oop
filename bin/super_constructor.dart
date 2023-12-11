// Super Constructor
// Tidak hanya untuk mengakses method atau field yang ada di parent class, kata kunci super juga bisa digunakan untuk mengakses constructor
// Syaratnya untuk mengakses parent class constructo, kita harus mengaksesnya didalam class child constructor
// Memanggil super constructor hanya bisa dilakukan dalam bentuk Redirecting Constructor
//! Khusus untuk mengakses super constructor boleh menggunakan body, sedangkan redirecting constructor tidak boleh menggunakan body
//! Jika di parent class terdapat constructor dengan parameter, maka di child class juga harus mendeklarasikan paremeter pada constructor di child class

class Manager {
  String? name;
  Manager(this.name);
}

class VicePresident extends Manager {
  // Mengakses parent constructor dengan kata kunci super
  VicePresident(String name) : super(name) {
    print('Create New Vice President');
  }
}

void main() {
  var manager = Manager('Budi');
  print(manager.name);

  var vp = VicePresident('Hadi');
  print(vp.name);
}
