abstract class Person{
  String name;
  int age;
  Person(this.name, this.age);
  void intro();
  String getRole();
}

class Student implements Person{
  @override
  String name;
  @override
  int age;
  String major;
  Student(this.name, this.age, this.major);
  @override
  void intro(){
    var role = this.getRole();
    print("Hi, I am $name - $age years old in $major with role $role");
  }
  @override
  String getRole() => "Student";
}

void main(){
  Person s1 = Student("Nguyen Van A", 20, "KTPM");
  s1.intro();
}






