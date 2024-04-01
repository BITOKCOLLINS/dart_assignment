void main () {
  print("Hello world");
  for (int i = 0; i < 10; i++) {
    print('hello ${i + 1}');
  }
  // Define a string with runes
  String runesString = "Runes in Dart: \u{1F600} \u{1F64B} \u{1F680}";

  // Print the string
  print(runesString);
}