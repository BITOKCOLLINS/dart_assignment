class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  // Method to print student information
  void printInfo() {
    print("Student Name: $name");
    print("Age: $age");
    print("Grade Level: $gradeLevel");
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  // Method to print teacher information
  void printInfo() {
    print("Teacher Name: $name");
    print("Age: $age");
    print("Subject: $subject");
  }
}

void main() {
  // Create student object
  Student student1 = Student("Bitok", 24, 15);

  // Create teacher object
  Teacher teacher1 = Teacher("Stan", 35, "Dart Programming");

  // Call student's printInfo method
  student1.printInfo();
  print("\n"); // Add a newline for better formatting

  // Call teacher's printInfo method
  teacher1.printInfo();
}
