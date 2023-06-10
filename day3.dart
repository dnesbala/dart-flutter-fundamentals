//CLASS
class Student {
  // Fields
  int roll;
  String name;

// Creating constructors
  // Student(int roll, String name) {
  //   this.roll = roll;
  //   this.name = name;
  // }

  // Positional argument constructor
  // Student(this.roll, this.name);

  // Named argument constructor
  Student({required this.roll, required this.name});

// Methods
  void getDetail() {
    print("Student Name: $name");
    print("Roll no: $roll");
  }

// Static Method
  static test() {
    print("Test static method");
  }
}

class Person {
  String name;
  Person({
    required this.name,
  });
}

// INHERITANCE
// Inheritance is achieved using extends keyword
// Here, Student2 inherits from Person
// So, parent class = Person and child class = Student2
class Student2 extends Person {
  Student2(String stdName)
      : super(
            name:
                stdName); // super calls the constructor of parent (base) class
  int? roll;

  int getRoll() {
    return roll ?? 0;
  }
}

class Employee extends Person {
  Employee({required super.name});
}

// ABSTRACT CLASS
abstract class Animal {
  // abstract method : doesn't have function body
  void speak();
}

// Class which extends/implements abstract class needs to override the abstract methods
// Override the method and provide it's own implementation
class Dog extends Animal {
  @override
  void speak() {
    print("vow vow");
  }
}

class Person2 extends Animal {
  @override
  void speak() {
    print("human sound");
  }
}

void main() {
  // MAP<Key, Value>
  Map<String, dynamic> laptop = {
    "name": "Acer Nitro 5",
    "ram": 8,
    "isNew": true,
  };

  print("Laptop Name: ${laptop["name"]}");
  print("Laptop has key ramsadf:  ${laptop["ramsadf"]}"); // gives null

  // String name = null;  // Error: As null can't be assigned to String
  String? name = null; // ? makes the name nullable i.e. it can take null values

  print(name?.toUpperCase()); // null aware operator ?.
  print(name ??
      "default value"); // if name is null, then value after ?? is shown else simply name is shown

// Creating an instance of class i.e. object
  Student sabin = Student(name: "Sabin", roll: 1);
  sabin.getDetail();
  Student ram = Student(roll: 2, name: "Ram");

  List<Student> students = [sabin, ram];

  Student
      .test(); // calling static method test(), we don't need to create an object. Can be called direct from the class

  // Animal animal = Animal();  // abstract classes can't be instantiated i.e. object can't be created from abstract class
  Dog germanShepherd = Dog();
  germanShepherd.speak();
}
