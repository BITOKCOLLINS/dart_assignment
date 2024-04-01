import 'dart:io';
void main(){
  // Get user input
  stdout.write("Enter a number: ");
  String? userInput = stdin.readLineSync();

  // Convert input to integer (handle potential errors)
  int? number;
  try {
    number = int.parse(userInput!);
  } on FormatException {
    print("Error: Invalid input. Please enter a number.");
    return; // Exit program if input is not a number
  }

  // Compare the number and print message
  if (number > 10) {
    print("Your number is greater than 10");
  } else if (number < 10) {
    print("Your number is less than 10");
  } else {
    print("Your number is equal to 10");
  }
}