import 'dart:io';

void main() {
  // VARIABLES & DATA TYPES
  String name = "Suman";
  int rollNo = 11;
  double height = 5.5;
  bool isValid = true;

  print("Name: $name, RollNo: $rollNo, Height: $height, isValid: $isValid");

// GET INPUT DATA
  var inputName;

  print("Enter name : ");
  inputName = stdin.readLineSync();
  print("Input Name: $inputName");

  // var test = 20; // test is int; using var decides the data type itself
  // test = "Name" // can't assign String to int

  // const vs final
  const pi = 3.1415;
  // pi = 3.5; // can't assign value to const

  final time = DateTime.now();
  // print(time);

  // Note: const => compile time constant
  // final => run time constant

  var age = 20;
  if (age > 18) {
    print("You are eligible to vote");
  } else {
    print("You are not eligible to vote");
  }

  age > 60 ? print("You are older") : print("You are not older");

  // for loop
  for (int i = 1; i < 5; i++) {
    print(i * i);
  }

// calling function
  greetMe();
  print("Sum is ${sum(5, 10)}");
  printDetails(name: "Ramesh", age: 22, isMarried: false);
}

// function.. no return type i.e. void
void greetMe() {
  print("Hello World");
}

// function which accepts two integers x and y and returns an int
// POSITIONAL ARGUMENTS
int sum(int x, int y) {
  return x + y;
}

// function with NAMED ARGUMENTS
void printDetails(
    {required String name, required int age, required bool isMarried}) {
  print("Name: $name, Age: $age, isMarried: $isMarried");
}
