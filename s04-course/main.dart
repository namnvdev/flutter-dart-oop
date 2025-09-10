import 'teacher.dart';
import 'student.dart';
import 'course.dart';
import 'study_status.dart';
import 'command.dart';

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
