//A no ans
abstract class Role {
  void displayRole();
}

// B No ans
class Person {
  final String name;
  final int age;
  final String address;
  final Role role;

  Person(this.name, this.age, this.address, this.role);

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;
}

// C No ans
class Student extends Person {
   String studentID;
   int grade;
   List<double> courseScores;

  Student(
      String name,
      int age,
      String address,
      this.studentID,
      this.grade,
      this.courseScores,
      ) : super(name, age, address, StudentRole()) {
     studentID = studentID;
     grade = grade;
     courseScores = courseScores;
   }

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }

  void printInformation() {
    print("Student Information:");
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Average Score: ${calculateAverageScore()}");
  }
}
//
// Implementing the Role interface for Student
class StudentRole implements Role {
  @override
  void displayRole() {
    print("Role: Student");
  }
}



// D No ans
class Teacher extends Person {
  late final String teacherID;
  late final List<String> coursesTaught;

  Teacher(
      String name, int age, String address, String teacherID,
      List<String> coursesTaught)
      : super(name, age, address, TeacherRole()) {
    this.teacherID = teacherID;
    this.coursesTaught = coursesTaught;
  }

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void printInformation() {
    print("Teacher Information:");
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Courses Taught:");
    for (String course in coursesTaught) {
      print("- $course");
    }
  }
}
class TeacherRole implements Role {
  @override
  void displayRole() {
    print("Role: Teacher");
  }
}

// E No ans
class StudentManagementSystem {
  void run() {
    Student johnDoe = Student(
      "John Doe",
      20,
      "123 Main St",
      "ABC123",
      12,
      [90, 85, 82],
    );

    Teacher mrsSmith = Teacher(
      "Mrs. Smith",
      35,
      "456 Oak St",
      "DEF456",
      ["Math", "English", "Bangla"],
    );


    johnDoe.printInformation();
    mrsSmith.printInformation();
  }
}

void main() {
  StudentManagementSystem system = StudentManagementSystem();
  system.run();
}



