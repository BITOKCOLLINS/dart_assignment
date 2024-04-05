/*
The challenge consists of the following tasks:

Create a function that takes two numbers as input and returns the sum of those numbers.
Write a program that uses a for loop to print out the numbers from 1 to 10.
Create a program that uses a switch statement to check for different string values and output a response based on the value.
Create a program that uses a while loop to print out the numbers from 20 to 10.
Create a program that uses an if-else statement to check if a number is even or odd and output the result.
Create a program that takes a list of numbers as input and outputs the largest number in the list.
Write a program that uses a try-catch block to catch an exception and output an error message.
*/
import 'dart:io';
// Function to add two numbers
int addNumbers(int num1, int num2) {
  return num1 + num2;
}

void main() {
  // Print numbers 1 to 10 using for loop
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // Check string value with switch statement
  String userInput = "apple"; // Change this value to test different cases
  switch (userInput) {
    case "apple":
      print("You entered Apple");
      break;
    case "banana":
      print("You entered Banana");
      break;
    default:
      print("You entered something else!");
  }

  // Print numbers 20 to 10 using while loop (note: prints in descending order)
  int j = 20;
  while (j >= 10) {
    print(j);
    j--;
  }

  stdout.write("Enter a number: ");
  // Read the user's input as a string
  String? userInput1 = stdin.readLineSync();
  // Convert input to integer (handle potential errors)
  int? number;
  try {
    number = int.parse(userInput1!);
  } on FormatException {
    print("Error: Invalid input. Please enter a number.");
    return; // Exit program if input is not a number
  }
  // Check if a number is even or odd
  //int number = 15; // Change this value to test
  if (number % 2 == 0) {
    print("$number is even");
  } else {
    print("$number is odd");
  }

  // Find the largest number in a list
  List<int> numbers = [5, 12, 3, 18];
  int largest = numbers[0];
  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }
  }
  print("Largest number in the list: $largest");

  // Try-catch block example (simulated exception)
  try {
    double result = 10 / 0; // This will cause a DivisionByZeroError
    print(result);
  } on Exception catch (e) {
    print("Error: $e");
  } finally {
    print("This code will always execute, even if an exception occurs.");
  }
}
