class Animal {
  void eat() => print("Eating...");
}

mixin Walkable on Animal {
  void walk() => print("Walking...");
}

class Dog extends Animal with Walkable {}

void main() {
  Dog d = Dog();
  d.eat();   // từ Animal
  d.walk();  // từ mixin Walkable
}



