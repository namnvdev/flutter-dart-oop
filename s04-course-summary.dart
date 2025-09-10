// Enum trạng thái học tập
enum StudyStatus { active, graduated, suspended }

// Các lệnh quản lý hệ thống
class Command {
  static const String ADD_STUDENT = "ADD_STUDENT";
  static const String ADD_TEACHER = "ADD_TEACHER";
  static const String SHOW_COURSE = "SHOW_COURSE";
}

// Abstract class Person
abstract class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce();
  String role();
}

// Student implements Person
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

// Teacher implements Person
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

// Course class
class Course {
  String title;
  Teacher? teacher;
  List<Student> students = [];

  Course(this.title);

  void execute(String command, Person? person) {
    switch (command) {
      case Command.ADD_TEACHER:
        if (person is Teacher) {
          teacher = person;
          print("Assigned teacher ${person.name} to $title.");
        }
        break;
      case Command.ADD_STUDENT:
        if (person is Student) {
          students.add(person);
          print("Added student ${person.name} to $title.");
        }
        break;
      case Command.SHOW_COURSE:
        print("===== Course: $title =====");
        if (teacher != null) teacher!.introduce();
        for (var s in students) {
          s.introduce();
        }
        print("Total students: ${Student.count}");
        print("Total teachers: ${Teacher.count}");
        break;
    }
  }
}

// Demo main
void main() {
  var course = Course("OOP in Dart");

  var t1 = Teacher("Mr. Smith", 40, "Programming");
  var s1 = Student("Alice", 20, StudyStatus.active);
  var s2 = Student("Bob", 21, StudyStatus.graduated);

  course.execute(Command.ADD_TEACHER, t1);
  course.execute(Command.ADD_STUDENT, s1);
  course.execute(Command.ADD_STUDENT, s2);

  course.execute(Command.SHOW_COURSE, null);
}
