# 🏫 School Management Mini Project (Dart OOP)
👤 Prepared by: [Nguyen Van Nam - namnv@tlu.edu.vn]  
🏫 [TLU / CSE]  
📚 Course: Flutter  
📅 Semester: Fall 2025  

---

## 📖 Overview
This repository contains lecture materials and a mini project for teaching  
**Object-Oriented Programming (OOP) in Dart**.  

The mini project **School Management** demonstrates key OOP concepts:
- Abstract class (`Person`)
- Inheritance & Implements (`Student`, `Teacher`)
- Encapsulation & Static members (`count`)
- Enum (`StudyStatus`)
- Constants as commands (`Command`)
- Aggregation (`Course` contains Students and Teacher)

---

## 📂 Project Structure

course/
├── main.dart # Entry point to run the project
├── person.dart # Abstract Person class
├── student.dart # Student class (implements Person)
├── teacher.dart # Teacher class (implements Person)
├── course.dart # Course class (manages Teacher + Students)
├── command.dart # Command constants
└── study_status.dart # Enum for student study status


---

## ▶️ How to Run

```bash
git clone https://github.com/namnv.dev/s04-oop-school-management.git
cd dart_oop_school_managements04-oop-school-management/course
dart main.dart


🖼 UML Class Diagram

- Person is an abstract class.

- Student and Teacher implement Person.

- Student uses StudyStatus (enum).

- Course aggregates 1 Teacher and many Students, and uses Command.


📚 Learning Objectives

- Understand OOP principles in Dart (Encapsulation, Inheritance, Polymorphism, Abstraction).

- Learn how to structure code across multiple files for clarity.

- Connect UML diagrams (analysis/design) with Dart implementation.

- Practice extending the project with new requirements (e.g., add Staff, multiple Courses, GPA).