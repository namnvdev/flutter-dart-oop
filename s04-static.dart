class Student {
  String name;
  static int count = 0;
  Student(this.name) {
    count++; 
  }
}

class Command {
  // Module: User
  static const String USER_LOGIN = "USER_LOGIN";
  static const String USER_LOGOUT = "USER_LOGOUT";

  // Module: Order
  static const String ORDER_CREATE = "ORDER_CREATE";
  static const String ORDER_CANCEL = "ORDER_CANCEL";

  // Module: Report
  static const String REPORT_GENERATE = "REPORT_GENERATE";
}

void handleCommand(String cmd) {
  switch (cmd) {
    case Command.USER_LOGIN:
      print("Executing user login...");
      break;
    case Command.ORDER_CREATE:
      print("Creating new order...");
      break;
    case Command.REPORT_GENERATE:
      print("Generating report...");
      break;
    default:
      print("Unknown command");
  }
}

void main() {
  handleCommand(Command.USER_LOGIN);   // Executing user login...
  handleCommand(Command.ORDER_CREATE); // Creating new order...
}





// void main() {
//   var s1 = Student("Alice");
//   var s2 = Student("Bob");
//   var s3 = Student("Charlie");

//   print("Total students created: ${Student.count}"); // 3
// }
