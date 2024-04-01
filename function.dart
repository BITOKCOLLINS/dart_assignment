void main() {
  // Numeric data types

  // int - whole numbers
  int age = 30;
  print("Age: $age");

  // ... existing code for double, String, List, and Map ...

  // Function examples
  int sum = addTwo(5, 3);
  print("Sum: $sum");

  int difference = subtractTwo(10, 4);
  print("Difference: $difference");

  int product = multiplyTwo(2, 6);
  print("Product: $product");

  double quotient = divideTwo(12.0, 3.0);
  print("Quotient: $quotient");

  int stringLengthResult = stringLength("Hello");
  print("String length: $stringLengthResult");

  String firstElement = getFirstElement(["apple", "banana", "cherry"]);
  print("First element: $firstElement");
}

// Function to add two numbers
int addTwo(int num1, int num2) {
  return num1 + num2;
}

// Function to subtract two numbers
int subtractTwo(int num1, int num2) {
  return num1 - num2;
}

// Function to multiply two numbers
int multiplyTwo(int num1, int num2) {
  return num1 * num2;
}

// Function to divide two numbers (consider handling division by zero)
double divideTwo(double num1, double num2) {
  if (num2 == 0) {
    // Handle division by zero error (e.g., throw an exception or return a special value)
    print("Error: Cannot divide by zero");
    return 0.0; // Placeholder value, you can customize error handling here
  }
  return num1 / num2;
}

// Function to get the length of a string
int stringLength(String str) {
  return str.length;
}

// Function to get the first element of a list
dynamic getFirstElement(List list) {
  // Use dynamic type to handle different list element types
  if (list.isEmpty) {
    print("Error: List is empty");
    return null; // Placeholder value, you can customize error handling here
  }
  return list[0];
}
