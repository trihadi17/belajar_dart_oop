// Factory Constructor
// adalah sebuah fitur dimana kita bisa membuat constructor untuk membuat object baru, namun logika cara pembuatan object barunya bisa kita sesuaikan dengan yang kita inginkan
// Misal kita ingin mengambilkan object yang sama berkali-kali, kita bisa menggunakan Factory Constructor
// Untuk membuat Factory Constructor kita bisa menggunakan kata kunci factory sebelum pembuatan COnstructor nya

class Database {
  Database() {
    print('Create new database connection');
  }

  // static = variable global, Database = Nama Class, database = variable nya, Database() = Object/class
  static Database database = Database();

  // Factory harus menghasilkan return, Database.get() = named constructor
  factory Database.get() {
    return database;
  }
}

void main() {
  var database1 = Database();
  var database2 = Database();

  print(database1 == database2);
}
