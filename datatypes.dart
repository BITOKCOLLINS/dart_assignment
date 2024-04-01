void main() {
  // Numeric data types
  // int - whole numbers
  int age = 24;
  print("Age: $age");

  // double - floating-point numbers
  double pi = 3.14159;
  print("Pi: $pi");

  // String - text data
  String name = "Collins";
  print("Name: $name");

  //boolean holds either true or false value
  bool isStudent = true;
  print("Study Status: $isStudent");

  // Lists - ordered collections of items
  List<String> colors = ["Red", "Green", "Blue"];
  print("Colors: $colors");
  print("First color: ${colors[0]}"); // Access by index

  // Maps - unordered collections of key-value pairs
  Map<String, int> fruits = {"apple": 2, "banana": 3};
  print("Fruits: $fruits");
  print("Number of apples: ${fruits["apple"]}");// Accessing map values by key

  //Runes - an integer used to represent any Unicode code point
  String runesString = "Runes in Dart: \u{1F600} \u{1F64B} \u{1F680}";
  print(runesString);
}