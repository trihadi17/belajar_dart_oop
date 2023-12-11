//* Exception
// Saat kita membuat aplikasi, kita tidak akan terhindar dengan yang namanya error
// Error direpresentasikan dengan istilah exception, dan semua direpresentasikan dalam bentuk class exception
// Kita bisa menggunakan class exception sendiri atau menggunakan yang sudah disediakan
// Untuk membuat sebuah exception, kita bisa menggunakan kata kunci 'throw', diikuti dengan object exceptionnya

//* Membuat Class Exception (buat manual)
// Selain menggunakan class Exception yang sudah tersedia, kita juga bisa membuat class Exception sendiri
// Tidak ada kontrak dalam pembuatan class Exception, kita bisa membuat class biasa
// Namun sangat direkomendasikan //! jika membuat class exception baru, kita melakukan 'implements' ke class Exception

//* TRY CATCH
// Saat kita memanggil sebuah method ynag bisa menyebabkan exception, maka secara otomatis program akan berhenti
// Jika kita tidak ingin program berhenti, kita perlu menangkap exception tersebut dan melakukan sesuatu ketika terjadi exception
// Untuk menangkap exceptionm kita bisa menggunakan try-catch
// Cara menggunaan try-catch sangat mudah, di block 'try', kita tinggal panggil method yang bisa menyebabkan exception dan di block 'catch', kita bisa melakukan sesuatu jika terjadi exception

//* TRY Catch Semua Exception
// Kadang kita tidakterlalu peduli dengan jenis class Exception
// Pada Kasus seperti ini, kita bisa menyebuatkan class ketika melakukan try-catch

//* FINALLY
// Dalam try-catch, bisa bisa menambahkan block 'finally'
// Block finllay ini adalah block dimana akan sealalu dieksekusi baik terjadi exception ataupun tidak
// Ini Sangat cocok ketika kita ingin melakukan sesuatu, tidak peduli sukses ataupun gagal

//* STACK TRACE
// Saat kita menangkap exception, object exception tidak memiliki informasi posisi atau lokasi terjadinya error
// Jika kita ingin mengetahui posisi atau lokasi terjadinya error, kita bisa menambahkan parameter kedua pada catch
// Secara otomatis paramter kedua tersebut adlaah sebuah Object Stack Trace

class Validation {
  static void validate(String username, String password) {
    if (username == '') {
      //* throw exception (otomatis dari dart) = memberitahu kalau ada error
      throw Exception('Username is blank');
    } else if (password == '') {
      throw Exception('Password is blank');
    }

    // ini kalau valid
  }
}

//* membuat class exception sendiri
class ValidationException implements Exception {
  String message;

  // Constructor
  ValidationException(this.message);
}

class ValidationManual {
  static void validate(String username, String password) {
    if (username == '') {
      //* throw exception (otomatis dari dart) = memberitahu kalau ada error
      throw ValidationException('Username is blank');
    } else if (password == '') {
      throw ValidationException('Password is blank');
    } else if (username != 'eko' || password != 'eko') {
      throw Exception('Login Failed');
    }
    // ini kalau valid
  }
}

void main() {
  //* Memanggil function / Mentrigger exception (otomatis dari dart)
  //Validation.validate('a', 'b');

  //* Memanggil function / Mentrigger exception (manual/buat sendiri)
  //ValidationManual.validate('username', '');

  //* Penggunaan try-catch (penanganan error)
  try {
    //class Exception
    ValidationManual.validate('eko', '');
    //Validation.validate('eko', '');

    // bisa menggunakan seperti ini -> on ValidationException / catch (ValidationException) yang merupakan nama exception nya
    // menangkap object exception (detail dari error nya) -> on ValidationException catch (exception)
  } on ValidationException catch (exception) {
    //* pesan error biasa
    //print('Validation Error');
    //* pesan error dari objectnya (ValidationManual -> throw ValidationException)
    print('Validation Error : ${exception.message}');

    //* Penggunaan Multiple Exception
  } on Exception catch (exception) {
    print('Error : ${exception.toString()}');

    //* Penggunaan Finally
  } finally {
    print('Finally');
  }

  //* Penggunaan try-catch memanggil semua class exception yang ada, tanap peduli exception yang mana
  try {
    //class Exception
    ValidationManual.validate('eko', 'salah');
    //! catch (exception) merupakan memanggil semua exception tanpa menuliskan exception class nya
  } catch (exception) {
    print('Error : ${exception.toString()}');
  } finally {
    print('Finally');
  }

  //*Penggunaan Stack Trace
  try {
    //class Exception
    ValidationManual.validate('eko', 'salah');

    //! Penggunaan StackTrace = stackTrace
  } on ValidationException catch (exception, stackTrace) {
    print('Validation Error : ${exception.message}');

    //! Print hasil StackTrace = ${stackTrace.toString()}
    print('Stack Trace : ${stackTrace.toString()}');
  } on Exception catch (exception, stackTrace) {
    print('Error : ${exception.toString()}');
    print('Stack Trace : ${stackTrace.toString()}');
  } finally {
    print('Finally');
  }

  // akan di eksekusi jika ada error, tidak terhenti (jika menggunakan try catch)
  print('Selesai');
}
