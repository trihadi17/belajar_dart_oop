// Cascade Notation
// Cascade Notation merupakan operator yang bisa kita gunakan untuk memberikan beberapa operasi pada object yang sama
// Ada dua jenis Cascade Notation, yaitu '.. (titik titik)' dan '?.. (tanda tanya titik titik)'
// .. itu object yang tidak nullable, sedangkan ?.. object yang nullable

class User {
  String? username;
  String? name;
  String? email;
}

// User? (function) -> Object User nullable
User? createUser() {
  return null;
}

void main() {
  //? Tanpa Cascade Notation
  var user = User();
  user.username = "trihadi";
  user.name = "hadi";
  user.email = "trihadi@.contoh.com";
  print(user.username);
  print(user.name);
  print(user.email);

  //? Dengan Cascade Notation (Non Nullable) -> mempersingkat pemanggilan (short expression)
  var user2 = User()
    ..username = "trihadia"
    ..name = "hadia"
    ..email = "trihadia@.contoh.com";
  print(user2.username);
  print(user2.name);
  print(user2.email);

  //? Dengan Cascade Notation (Nullable) -> harus tambahkan tanda '?' di awal pemanggilan
  // var user3 = User? user3
  User? user3 = createUser()
    ?..username = "trihadii"
    ..name = "hadii"
    ..email = "trihadii@.contoh.com";
  print(user3);
}
