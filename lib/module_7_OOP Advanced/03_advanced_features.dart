class Response {
  Response({required this.name, required this.age});

  String name;
  int age;

  // For better dubugging and to see the object values we must override toString method
  // Mostly used for debugging purposes
  @override
  String toString() {
    return "Response(name: $name, age: $age)";
  }

  // To compare two objects we must override the equality operator (not by their hashcode but by their values)
  // Rarely used for debugging but good to know
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Response && other.name == name && other.age == age;
  }
}

class Person {
  Person({String? name, int? age}) : _name = name, _age = age;

  String? _name;
  int? _age;

  String get name => _name ?? "No name provided";
  int get age => _age ?? 0;

  // Copy constructor
  Person copyWith({String? newName, int? newAge}) {
    return Person(name: newName ?? this._name, age: newAge ?? this._age);
  }
}

void main() {
  final serverSideResponse = Response(name: "John", age: 20);
  final clientSideResponse = Response(name: "John", age: 20);
  print(serverSideResponse == clientSideResponse);

  Person person = Person(name: "Doe", age: 25);
  print(person.name);
  print(person.age);

  // After 1 year (with normal assignment)
  // person = Person(age: 26);
  // print(person.name); // Null as new instance is created
  // print(person.age); // 26

  // After 1 year with copy constructor
  person = person.copyWith(newAge: 30);
  print(person.name); // Doe
  print(person.age); // 30
}
