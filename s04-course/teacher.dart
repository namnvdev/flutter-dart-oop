import 'person.dart';

class Teacher implements Person {
  @override
  String name;

  @override
  int age;

  String subject;
  static int count = 0;

  Teacher(this.name, this.age, this.subject) {
    count++;
  }

  @override
  void introduce() {
    print("I am $name, $age years old, teaching $subject.");
  }

  @override
  String role() => "Teacher";
}
