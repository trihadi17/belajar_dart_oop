// Interface
// Sebelumnya kita sudah tahu bahwa abstract class bisa kita gunakan sebagai kontrak untuk class child nya.
// Namun sebenarnya yang lebih tepat untuk kontrak bukanlah abstract, melainkan //! Interface
// Jangan salah sangka bahwa Interface disini bukan User Interface
// Interface mirip seperti abstract class,yang membedakannya adalah semua method di Interface otomatis //! 'abtract'
// Untuk mewariskan Interface, kita tidak menggunakan kata kunci 'extends', melainkan 'implements'
// biasanya extends hanya bisa extends pada 1 class saja, beda dengan implements bisa lebih dari 1 interface

// Membuat Interface
// Interface di Dart bisa diambil dari class apapu, saat kita membuat sebuah class, secara otomatis class tersebut merupakan interface untuk class itu sendiri
// Interface dari class tersebut, bisa kita gunakan pada class lain jika kita ingin
// Maka secara otomatis, kita harus mendeklarasian semua method dan field yang terdapat pada class tersebut, karena yang kita ambil sebenarnya adalah interface ukan classnya
// Anggap saja interface adalah kontrak dari pembuatan Class

import 'data/car.dart';

class ClassName {}

void main() {}
