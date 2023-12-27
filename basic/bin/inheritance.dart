class Person {
  String? name;
  int? age;
  Person(this.name, this.age);
}

class Student extends Person {
  int? rollno;
  Student(String name, int age, this.rollno): super(name, age);
}

class Employee {
  // Named constructor
  Employee.manager() {
    print("Employee named constructor");
  }
}

class Manager extends Employee {
  // Named constructor
  Manager.manager() : super.manager() {
    print("Manager named constructor");
  }
}


void main(List<String> args) {
  var s = Student("Coco", 7, 1);
  print("name: ${s.name}, age: ${s.age}, rollno: ${s.rollno}");

  var m = Manager.manager();
}