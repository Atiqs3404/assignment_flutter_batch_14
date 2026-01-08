import 'dart:io';

//// Static & Factory
// Static members belong to the class itself rather than to any specific instance.
// Factory constructors are special constructors that can return instances of the class or its subclasses.
class Database {
  // Singleton design pattern
  Database._internal();

  factory Database() => Database._instance;

  static final Database _instance = Database._internal();

  String _username = "Guest";

  String get username => _username;

  set username(String value) {
    _username = value;
  }
}

//// Mixin (Code Reuse)
// If there is multiple same name methods in multiple mixins then the last one called after with, that mixin method will be called.
// If there is a same name method in the main class and mixin, then the main class method will be called.
class Animal {
  void eat() => print("Animal eats");
}

mixin class Flyable {
  void fly() => print("Animal flies");
}

mixin class Swimmable {
  void swim() => print("Animal swims");
}

class Dog extends Animal with Swimmable {}

class Eagle extends Animal with Flyable {}

//// Extension
// We can add to functions with the core classes along with the normal classes of any language with extension
extension StringExtension on String {
  int toInt() {
    return int.parse(this); // Here this means String class
  }
}

void main() {
  //// Static & Factory
  Platform.isWindows ? print("Windows") : print("Not Windows");

  int a = 6;
  print(a); // 6

  a = 10;
  print(a); // 10

  Database database = Database();
  print(database.username); // Guest

  database.username = "John";
  print(database.username); // John

  database = Database();
  print(
    database.username,
  ); // Again guest it loses its instance if there is no factory in the class

  //// Mixin
  final eagle = Eagle();
  final dog = Dog();

  eagle.fly();
  dog.swim();

  eagle.eat();
  dog.eat();

  //// Extension
  String number = "121424878294";
  print(number.toInt());
}
