class Box<T> {
  T value;
  Box(this.value);

  void show() {
    print("Value: $value");
  }
}

void main() {
  var intBox = Box<int>(123);
  var strBox = Box<String>("Hello");

  intBox.show();  // Value: 123
  strBox.show();  // Value: Hello
}



