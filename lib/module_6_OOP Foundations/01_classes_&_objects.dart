//// Procedural Programming
// // User domain
// String accName = "John Doe";
//
// // Transaction domain
// String transactionType = "deposit";
//
// // User functions (Behaviour)
// void getUserDetails(){
//   print("Account name: $accName");
// }
//
// // Transaction functions (Behaviour)
// void getTransactionDetails(){
//   accName = "Atiq Hasan Sani"; //This should not be accessible from outside that's why class & objects came
//   print("Transaction type: $transactionType");
// }

//// Object Oriented Programming
// User Class
class User {
  // User properties
  String accName = "John Doe";

  // User methods (Behaviour)
  void getUserDetails() {
    print("Account name: $accName");
  }
}

// Transaction Class
class Transaction {
  // Transaction properties
  String transactionType = "deposit";

  // Transaction methods (Behaviour)
  void getTransactionDetails() {
    // accName; // Not initiable
    print("Transaction type: $transactionType");
  }
}

class Car{
  // Constructor (Regular)
  Car(this.brandName, this.color, this.model, this.owner);

  // Constructor (Named)
  Car.newPurchase(String owner){
    this.owner = owner;
  }

  String? brandName;
  String? color;
  int? model;
  String? owner;

  void getColor() => print("This car color is $color");

  void setColor(String color){
    // Here constructor color = passed color;
    this.color = color;
  }
}

// Creating a user based system
class AppUser{
  //Normal user
  AppUser(){
    _role = "User";
    _name = 'Guest';
  }

  // Supervisor user
  AppUser.supervisor(String name){
    _role = "Supervisor";
    _name = "name";
  }

  // Superuser
  AppUser.superUser(String name){
    _role = "Superuser";
    _name = "name";
  }

  String? _role;
  String? _name;
}

// Class exercise (15 Minutes)
class Student{
  String? name;
  String? studentId;
  double? gpa;

  Student(this.name, this.studentId, this.gpa);

  //// Both are same (Named constructor)
  // Student.freshman(String name, String studentId, {this.gpa = 0.0}){
  //   this.name = name;
  //   this.studentId = studentId;
  // }

  Student.freshman(this.name, this.studentId) : gpa = 0.0;

  void printStudentInfo() => print("This student name is $name whose id is $studentId and his GPA is $gpa");
}

void main() {
  // Creating objects
  User atiq = User();

  atiq.accName = "Atiq Hasan Sani (Edited)";
  atiq.getUserDetails(); // atiq class method call
  User().getUserDetails(); // Main user class method call

  // Car object creation
  Car myCar = Car("Toyota", "Red (Default factory color)", 2023, "");

  myCar.color = "blue (Edited)";
  myCar.getColor();
  Car("Toyota", "Red (Default factory color)", 2023, "").getColor();

  Car neighbourCar = Car("Toyota", "Red (Default factory color)", 2023, "");

  neighbourCar.color = "yellow (neighbour car)";
  neighbourCar.getColor();

  Car newCar = Car.newPurchase("Atiq");

  print("New car owner is ${newCar.owner}");
  
  // Class exercise (15 minutes)
  Student starStudent = Student("Jane Doe", "S123", 3.9);
  Student freshman = Student.freshman("John Smith", "S124");

  starStudent.printStudentInfo();
  freshman.printStudentInfo();
}
