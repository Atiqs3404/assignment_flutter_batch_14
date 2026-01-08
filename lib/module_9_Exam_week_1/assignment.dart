// You must solve the following problems using Object Oriented Programming Concepts
// 1. Create a class Book with Properties: title, author, price
//  -> Use a constructor to initialize these values
//  -> Write a method discountedPrice(double discountPercentage) that calculates and returns the price after discount
//  -> Create at least 2 book objects, and print their details along with the discounted prices.
// 2. Create a base class Employee with properties: name, salary
//  -> Create two subclasses
//  -> Manager -> adds property department
//  -> Developer -> adds property programmingLanguage
//  -> Both subclasses should have a method displayDetails() that prints all the details of the employee
//  -> Create on manager and one developer object, and call their displayDetails() methods.
// 3. Create an abstract class Applicant with:
//  -> Abstract method turnOn()
//  -> Abstract method turnOff(), then two subclasses
//  -> Fan -> implements the methods with custom messages (e.g., "Fan is now running),
//  -> Light -> implements the methods with custom messages (e.g., "Light is switched ON")
//  -> Create on fan and light object, and call their methods.

// Problem 1
class Book {
  Book(this.title, this.author, this.price);

  String title;
  String author;
  double price;

  void discountedPrice(double discountPercentage) {
    double discountAmount = price * (discountPercentage / 100);
    double finalPrice = price - discountAmount;
    print(
      'The discounted price of "$title" by $author is: \$${finalPrice.toStringAsFixed(2)}',
    );
  }
}

// Problem 2
// Base class
class Employee {
  Employee(this.name, this.salary);

  String name;
  double salary;
}

// Subclass Manager
class Manager extends Employee {
  Manager(super.name, super.salary, this.department);

  String department;

  void displayDetails() {
    print(
      '\nManager Name: $name, Salary: \$${salary.toStringAsFixed(2)}, Department: $department',
    );
  }
}

// Subclass Developer
class Developer extends Employee {
  Developer(super.name, super.salary, this.programmingLanguage);

  String programmingLanguage;

  void displayDetails() {
    print(
      'Developer Name: $name, Salary: \$${salary.toStringAsFixed(2)}, Programming Language: $programmingLanguage',
    );
  }
}

// Problem 3
// Abstract class Applicant
abstract class Applicant {
  void turnOn();
  void turnOff();
}

// Subclass Fan
class Fan extends Applicant {
  @override
  void turnOn() {
    print("\nFan is now running");
  }

  @override
  void turnOff() {
    print("Fan is now stopped");
  }
}

// Subclass Light
class Light extends Applicant {
  @override
  void turnOn() {
    print("\nLight is switched ON");
  }

  @override
  void turnOff() {
    print("Light is switched OFF");
  }
}

void main() {
  // Testing Problem 1
  Book book1 = Book("The Alchemist", "Paulo Coelho", 15.99);
  Book book2 = Book("1984", "George Orwell", 12.49);

  book1.discountedPrice(10);
  book2.discountedPrice(20);

  // Testing Problem 2
  Manager manager = Manager("Alice", 75000, "Sales");
  Developer developer = Developer("Bob", 65000, "Dart");

  manager.displayDetails();
  developer.displayDetails();

  // Testing Problem 3
  Fan fan = Fan();
  Light light = Light();

  fan.turnOn();
  fan.turnOff();
  light.turnOn();
  light.turnOff();
}
