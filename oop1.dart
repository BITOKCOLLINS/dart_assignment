import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a class that implements the Animal interface
class Dog implements Animal {
  String name;
  
  Dog(this.name);
  
  @override
  void makeSound() {
    print("$name says: Woof!");
  }
}

// Define a subclass that overrides an inherited method
class Cat extends Dog {
  Cat(String name) : super(name);
  
  @override
  void makeSound() {
    print("$name says: Meow!");
  }
}

// Define a class that initializes data from a file
class Bird implements Animal {
  String name;
  List<String> sounds = [];
  
  Bird(this.name, String fileName) {
    // Read sounds from file
    File(fileName).readAsLines().then((List<String> lines) {
      sounds = lines;
    }).catchError((e) {
      print("Error reading file: $e");
    });
  }
  
  @override
  void makeSound() {
    if (sounds.isNotEmpty) {
      print("$name says: ${sounds.first}");
    } else {
      print("$name says: Chirp!");
    }
  }
}

// Define a method that demonstrates the use of a loop
void printSounds(Animal animal) {
  print("${animal.runtimeType} sounds:");
  for (int i = 0; i < 3; i++) {
    animal.makeSound();
  }
}

void main() {
  // Create instances and demonstrate features
  Dog dog = Dog("Buddy");
  Cat cat = Cat("Whiskers");
  Bird bird = Bird("Tweety", "bird_sounds.txt");
  
  // Demonstrate method override
  dog.makeSound();
  cat.makeSound();
  bird.makeSound();
  
  // Demonstrate initialization from file
  print("Bird sounds from file: ${bird.sounds}");
  
  // Demonstrate loop in method
  printSounds(dog);
  printSounds(cat);
  printSounds(bird);
}
