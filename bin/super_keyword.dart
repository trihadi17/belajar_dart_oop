// Super Keyword
// Super keyword digunakan untuk mengakses method/field milik class parent yang sudah di override pada class child
// Untuk mengakses class parent kita bisa menggunakan 'super'

// class parent
class Shape {
  // method parent
  int getCorner() {
    return 0;
  }
}

class Rectangle extends Shape {
  //method overriding -> class child
  int getCorner() {
    return 4;
  }

  // mengakses method pada class parent yang sudah di override
  int getParentCorner() {
    // super merupakan kata kunci, getCorner() merupakan method pada class parent
    return super.getCorner();
  }
}

void main() {
  var rectangle = Rectangle();
  print(rectangle.getCorner());
  print(rectangle.getParentCorner());
}
