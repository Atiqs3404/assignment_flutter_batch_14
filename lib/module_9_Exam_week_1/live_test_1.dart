//You need to show your understanding of class, constructor, inheritance, and abstraction by solving the following problems:
//1.Create a Student class with properties name and roll. Use a constructor to initialize these values and add a method displayInfo() to print them. Create one student object and display the details.
//2.Create a Person class with a property name. Then create a Teacher class that inherits from Person and adds a property subject. Initialize a teacher object and print both the name and subject.
//3.Create an abstract class named Shape with an abstract method area(). You have to create set and get method  to access the area(). Then create one subclass Circle with property radius that implements the area() method.
//Finally, create one circle object and print its area.

// Problem 1
class Student {
  Student(this.name, this.roll);

  String name;
  int roll;

  void displayInfo() {
    print('Student Name: $name, Roll Number: $roll\n');
  }
}

// Problem 2
class Person {
  Person(this.name);

  String name;
}

// Subclass Teacher
class Teacher extends Person {
  Teacher(super.name, this.subject);

  String subject;

  void displayInfo() {
    print('Teacher Name: $name, Subject: $subject\n');
  }
}

// Problem 3
abstract class Shape {
  // Abstract method
  double area();

  // Setter for area
  void setArea(double value);

  // Getter for area
  double getArea();
}

// Subclass Circle
class Circle extends Shape {
  Circle(this.radius);

  double radius;
  double _area = 0.0;

  @override
  double area() {
    _area = 3.1416 * (radius * radius);
    return _area;
  }

  @override
  void setArea(double value) {
    _area = value;
  }

  @override
  double getArea() {
    return _area;
  }
}

void main() {
  // Problem 1
  Student student = Student('Alice', 101);
  student.displayInfo();

  // Problem 2
  Teacher teacher = Teacher('Mr. Smith', 'Mathematics');
  teacher.displayInfo();

  // Problem 3
  Circle circle = Circle(5.0);
  print('Area of Circle is ${circle.area()}');
}
