import 'dart:mirrors';

//* Nosuchmethod : abstract (membatasi method yang digunakan)
abstract class CategoryRepository {
  id(String id);
  name(String name);
  quantity(int quantity);
  location(String location);
}

class Repository extends CategoryRepository {
  //! NOTED: Pada nosuch method, jika kita menggunakan abstract class kita tidak perlua mendeklarasikan ulang method nya
  final String _name;

  Repository(this._name);

  dynamic noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = "select * from $_name where $column = '$value'";
    print(sql);
  }
}
