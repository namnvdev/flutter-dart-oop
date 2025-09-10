mixin Flyable {
  void fly() => print("I can fly!");
}
mixin Swimable {
  void swim() => print("I can swim!");
}
class Animal{
  String name;
  Animal(this.name);
}
class Bird extends Animal with Flyable {
  Bird(super.name);
}
class Duck extends Animal with Flyable, Swimable {
  Duck(super.name);
}
void main() {
  Bird b = Bird("Pigeon");
  Duck d = Duck("Duck");

  b.fly();      // I can fly!
  d.fly();      // I can fly!
  d.swim();     // I can swim!
}
