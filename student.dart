import 'dart:io';
import 'dart:math';
import 'dart:convert';

class Student {
  String name;
  int age;
  int? luckNumber;

  Student({required this.name,  required this.age, this.luckNumber});

  void displayStudentInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Lucky Number: $luckNumber');
  }
/// WelcomeMe speak out the welcome message to a student
  void welcomeMe(){
    print("Welcome $name to TLU. Your lucky number is $luckNumber");
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'luckNumber': luckNumber,
    };
  }

  int getluckNumber(){
    return luckNumber! ?? 0;
  }

 }

 Student fromJson(Map<String, dynamic> json) {
  return Student(
    name: json['name'],
    age: json['age'],
    luckNumber: json['luckNumber'],
  );
}


void main(){

  Random random = Random();
  stdout.write("Nhap ten:");
  String? strName = stdin.readLineSync();
  strName = strName ?? "Unknown";

  print("Nhap tuoi:");
  int iAge = int.tryParse(stdin.readLineSync() ?? "")??0;
  Student student = Student(name: strName, age: iAge, luckNumber: random.nextInt(100));
  student.displayStudentInfo();

  Map<String,dynamic> json = student.toJson();
  String jsonString = jsonEncode(json);
  print("The student's JSON String: $jsonString");

  Student studentFromJson = fromJson(jsonDecode(jsonString));
  studentFromJson.welcomeMe();

  int? luckNumber = student.getluckNumber();
  
  if (luckNumber >= 80){
    print("Tặng bạn 1 năm học phí");
  }else if (luckNumber >= 60){
    print("Tặng 1/2 năm học phí");
  }else if (luckNumber >= 40){
    print("Tặng 1/4 năm học phí");
  }else{
    print("Tặng bạn 1 tràng pháo tay");
  }

  switch(luckNumber){
    case >=80:
        print("Tặng bạn 1 năm học phí");
        break;
    case >=60 && < 80:
      print("Tặng 1/2 năm học phí");
      break;
    case >=40 && < 60:
      print("Tặng 1/4 năm học phí");
      break;
    default:
          print("Tặng bạn 1 tràng pháo tay");
          break;
  }



}
