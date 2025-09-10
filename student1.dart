import 'dart:io';
import 'dart:math';
import 'dart:convert';

class Student {
  String name;
  int age;
  int? luckNumber;
  Student({required this.name,  required this.age, this.luckNumber});
  void displayStudentInfo() {
    print('Name: $name'); print('Age: $age');
    print('Lucky Number: $luckNumber');
  }
  void welcomeMe(){
    print("-----------------------TLU--------------------------");
    print("Welcome $name to TLU. Your lucky number is $luckNumber");
  }
}
void main(){
  Random random = Random();
  List<Student> classKTPM = [];
  stdout.write("Nhap ten:");
  String? strName = stdin.readLineSync();
  strName = strName ?? "Unknown";
  stdout.write("Nhap tuoi:");
  int iAge = int.tryParse(stdin.readLineSync() ?? "")??0;
  print("---Thong tin sinh vien---");
  Student student = Student(name: strName, age: iAge, luckNumber: random.nextInt(100));
  student.displayStudentInfo();
  student.welcomeMe();
  classKTPM.add(student);
}