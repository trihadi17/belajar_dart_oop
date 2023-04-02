// Data untuk import

class Category {
  String id;
  String name;

  //constructor dengan formal paramter
  Category(this.id, this.name);

  //* Overrride Equals Operator (==) pada file 'equals_operator.dart'
  bool operator ==(Object other) {
    if (other is Category) {
      if (id != other.id) {
        return false;
      } else if (name != other.name) {
        return false;
      } else {
        return true;
      }
    } else {
      return true;
    }
  }

  //* Override Hashcode
  int get hashCode {
    var result = id.hashCode;
    result += name.hashCode;
    return result;
  }
}
