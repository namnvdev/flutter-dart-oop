import 'person.dart';
import 'study_status.dart';

class Student implements Person {
  @override
  String name;

  @override
  int age;

  StudyStatus status;
  static int count = 0;

  Student(this.name, this.age, this.status) {
    count++;
  }

  @override
  void introduce() {
    print("I am $name, $age years old, status: $status.");
  }

  @override
  String role() => "Student";
}
