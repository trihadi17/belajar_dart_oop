// Method Expression Body
// membuat method dengan body yang sanagt sederhana menggunakan expression body sama seperti membuat anonymous function

class Computer {
  //? Method pada umumnya
  void startupUmum() {
    print('computer is starting');
  }

  String getOperatingSystemUmum() {
    return 'Linux';
  }

  //? Method Expression Body
  void startup() => print('computer is starting');

  void shutdown() => print('computer is shutting down');

  String getOperatingSystem() => 'Linux';
}

void main() {
  var computer = Computer();
  computer.startup();
  computer.shutdown();
  print(computer.getOperatingSystem());
}
