import 'student.dart';
import 'teacher.dart';
import 'command.dart';
import 'person.dart';

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
