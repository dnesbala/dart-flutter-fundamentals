void main() {
  var name = "Suman";

  print(name.toUpperCase());
  print(name.length);

  // LIST
  List<String> shoppingList = ["buscuits", "cloth", "item1"];
  print(shoppingList[1]);
  print(shoppingList.length);

  shoppingList.add("shirt");
  print(shoppingList);

  shoppingList.remove("cloth");
  print(shoppingList);

  List<int> numbers = [10, 3, 5, 0, 2];
// where is used for transforming elements to other form
  var square = numbers.map((e) => e * e).toList();
  print("Square of above numbers: $square");

// where is used for filtering items
  var greatherThanThree = numbers.where((e) => e > 3);
  print("Greater than 3 : $greatherThanThree");

  List<String> names = ["test", "tester", "designer"];
  print(names.map((e) => e.toUpperCase()));
}


// List, Map
// map, where method
// null safety
// oop => class, objects, coonstructors, named constructors
// getter, setter, static
// inheritance


// map: odd list, even odd