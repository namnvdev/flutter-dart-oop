abstract class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void intro(){
    print('My name is $name, I am $age years old');
  }
}

class Student extends Person {
  int? luckNumber;
  Student(String name, int age, this.luckNumber) : super(name, age);
  @override
  void intro(){
    super.intro();
    print('My lucky number is $luckNumber');
  }
}

class Teacher extends Person {
  String subject;
  Teacher(String name, int age, this.subject) : super(name, age);
  @override
  void intro(){
    super.intro();
    print('I teach $subject');
  }
}




void main(){
  Person p1 = Student("Nguyen Van A", 20, 9);
  p1.intro();

}

