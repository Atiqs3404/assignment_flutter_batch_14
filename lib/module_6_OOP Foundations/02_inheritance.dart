class Animal {
  Animal(this.name);

  final String name;

  void eat() => print("$name is eating");

  String makesound() => "$name is making sound";
}

class Dog extends Animal {
  Dog(super.name);

  // Overriding the behavior of the parent class

  // Adding with parent method
  @override
  String makesound() => "${super.makesound()} WOOF WOOF";

  // Replacing the parent method
  @override
  void eat() => print("$name is eating");
}

// Class exercise (15 minutes)
// Parent class
class Vehicle {
  Vehicle(this.make, this.model);

  final make;
  final model;

  void drive() => print("Driving the $make $model");
}

// Sub class
class Car extends Vehicle {
  Car(super.make, super.model);

  int numberOfDoors = 4;

  @override
  void drive() {
    super.drive();
    print("This car has $numberOfDoors doors");
  }
}

void main() {
  final dog = Dog("Buddy");

  dog.eat();
  print(dog.makesound());

  // Class exercise (15 minutes)
  final myCar = Car("Toyota", "Corolla");
  myCar.drive();
}
