abstract class Parent {
  final name = "Atiq Hasan Sani";
  final age = 22;

  void regularMethod() {
    print("This method has body that's why this is a regular/concrete method");
  }

  // This method has no body that's why this is an abstract method
  // Abstract methods must be override by child/sub classes
  String abstractMethod();
}

class Child extends Parent {
  @override
  String abstractMethod() {
    return "This is a concrete implementation of the abstract method in parent class";
  }
}

class Child2 implements Parent {
  @override
  String abstractMethod() {
    // TODO: implement abstractMethod
    throw UnimplementedError();
  }

  @override
  void regularMethod() {
    // TODO: implement regularMethod
  }

  @override
  // TODO: implement age
  int get age => throw UnimplementedError();

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();
}

// The interface class can't be extended outside of its library. Only be extended inside its library
// That's why interface class is a more real world class
// Interface classes makes templates which are read only
abstract interface class bankAccount {
  bankAccount(this.ownerName, this.accNum, this.branchName, this.accBalance);

  final ownerName;
  final accNum;
  final branchName;
  final accBalance;

  void deposit() {
    print("This action refers to cash deposit");
  }

  void withdraw() {
    print("This action refers to cash withdraw");
  }
}

class newBankAccount1 implements bankAccount {
  @override
  // TODO: implement accBalance
  get accBalance => throw UnimplementedError();

  @override
  // TODO: implement accNum
  get accNum => throw UnimplementedError();

  @override
  // TODO: implement branchName
  get branchName => throw UnimplementedError();

  @override
  void deposit() {
    // TODO: implement deposit
  }

  @override
  // TODO: implement ownerName
  get ownerName => throw UnimplementedError();

  @override
  void withdraw() {
    // TODO: implement withdraw
  }
}

// A class can have multiple implements but 1 extend maximum
class A {}

class B {}

class C {}

class D extends C implements A, B {}

// Polymorphism
class Animal {
  void makesound() => print("Animal is making sound");
}

class Dog extends Animal {
  void makesound() => print("Woof");
}

class Cat extends Animal {
  void makesound() => print("Meow");
}

//// In class exercise
abstract class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount);
}

class SavingAccount extends BankAccount {
  SavingAccount(super.balance);

  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print("Insufficient balance");
    }
  }
}

class CheckingAccount extends BankAccount {
  CheckingAccount(super.balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    if (balance < 0) {
      print("Overdraft fee applied");
      balance -= 10;
    }
  }
}

void main() {
  // final parent = Parent(); // Abstract classes can't be instantiated

  final parent = Child(); // Can extend child class

  // Polymorphism allows objects of different classes to be treated as objects of a common superclass
  int age = 22;
  double contact = 01580597473;

  List<num> randomVar = [age, contact];

  Animal myCat = Cat();
  Animal myDog = Dog();

  List<Animal> animalList = [myCat, myDog];

  // Runtime polymorphism
  for (Animal animal in animalList) {
    animal.makesound();
  }

  // In class exercise
  List<BankAccount> accList = [SavingAccount(100), CheckingAccount(100)];

  for (final acc in accList) {
    acc.withdraw(150);
    print(acc.balance);
  }
}
