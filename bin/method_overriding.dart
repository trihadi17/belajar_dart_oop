// Method Overriding
// adalah kemampuan mendeklarasikan ulang method di child class yang sudah ada di parent class
// saat kita melakukan proses overriding tersebut, otomatis ketika kita membuat object dari class child, method yang di class parent tidak bisa diakses lagi
// saat melakukan method overriding, kita harus pastikan deklarasi methodnya harus sama dengan di parent classnya

// Class Manager = Class Parent
class Manager {
  String? name;

  void sayHello(String name) {
    // $name = parameter function/method, ${this.name} = variable/field String? name
    print('Hello $name, my name is Manager ${this.name}');
  }
}

class VicePresident extends Manager {
  //! Method Overriding = deklarasi ulang method pada class child, sehingga method di class parent tidak bisa diakses lagi
  void sayHello(String name) {
    // $name = parameter function/method, ${this.name} = variable/field String? name
    print('Hello $name, my name is VP ${this.name}');
  }
}

void main() {
  var manager = Manager();
  manager.name = 'Hadi';
  manager.sayHello('Putra');

  var vp = VicePresident();
  vp.name = 'Hadi';
  vp.sayHello('Putra');
}
