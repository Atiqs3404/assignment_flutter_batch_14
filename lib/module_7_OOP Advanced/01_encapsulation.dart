class Person {
  Person();

  String? _name;
  int? _boyosh;
  int? publicAge;

  String? get getName => _name;
  set setName(String name) => this._name = name;

  int? get getAge => _boyosh;
  set setAge(int age) {
    if (age > 0) {
      this._boyosh = age;
    } else {
      print("Invalid age: must be greater than 0");
    }
  }
}

class Details {
  Details({required this.birthCertificateNumber});

  String birthCertificateNumber;
  int? _boyosh;

  int? get getAge{
    if(birthCertificateNumber.length == 10){
      _boyosh = 25;
      return _boyosh;
    } else{
      print("Invalid birth certificate number: must be 10 digits");
      return null;
    }
  }
}

// In class exercise
class Thermostat{
  Thermostat(this._temperature);

  double _temperature;

  double get celsius => _temperature;

  set celsius(double temperature) {
    if(temperature > -30 && temperature < 50){
      this._temperature = temperature;
    } else{
      print("Warning: Termperature out of range");
    }
  }

  double get fahrenheit => celsius * (9/5) + 32;
}

void main() {
  final person1 = Person();

  person1.setName = "Atiq";
  print(person1.getName);

  person1.setAge = -1; // error
  person1.setAge = 18; // age will be set
  print(person1.getAge);

  person1.publicAge = -1; // Correct no error
  person1.publicAge = 18; // Correct no error
  print(person1.publicAge);

  final person2 = Details(birthCertificateNumber: "123467890");

  print(person2.getAge);

  // In class exercise
  final temp1 = Thermostat(44);

  temp1.celsius = 44;
  print(temp1.celsius);
  
}
