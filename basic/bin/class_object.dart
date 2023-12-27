

class Hako {
  // Use the static keyword to implement class-wide variables and methods.
  // The static variables and methods are part of the class instead of a specific instance.
  static const String msg = "Hello There!";
  // Declaring the class properties as private by using underscore(_).
  String _name = "Hako";
  Hako() {
    print("I am constructor, I have same name as class");
  }
  void info() {
    print(" I am parent info method");
  }
  void bye() {
    print("Good Bye!");
  }
  @Deprecated("Now not in user will be removed soon")
  void byebye() {
    print("Bye Bye");
  }
}

class Hackaholic extends Hako {
  Hackaholic() {
    print("Hello there Hackaholic");
  }
  void display() {
    // Accessing parent class variables and methods using super
    print(super.name);
    super.info();
  }

  //  Method overriding
  @override
  void bye() {
    print("Good Bye!");
  }
}

class Student {
  late String? name;
  late int? std;
  late int? rollno;
  // Bad
  Student(String name, int std, int rollno) {
    this.name = name;
    this.std = std;
    this.rollno = rollno;
  }
}

class Person {
  late String? name;
  late int? age;
  // Constructor Single Line, short form
  // Good
  Person(this.name, this.age);
}

class Person1 {
  late String? name;
  late int? age;
  late double? salary;
  late String? addr;
  // constructor with optional parameter
  Person1(this.name, this.age, [this.salary = 0, this.addr = "N/A"]);
}

class Person2 {
  late String? name;
  late int? age;
  late double? salary;
  late String? addr;
  // constructor with named parameter
  Person2({this.name, this.age, this.salary = 0, this.addr = "N/A"});
}


// named constructor
class Person3 {
  late String? name;
  late int? age;
  late double? salary;
  late String? addr;
  // constructor with named parameter
  Person3({this.name, this.age, this.salary = 0, this.addr = "N/A"});
  // nmaed constructor
  // var p = Person3.fromJson({'name':'Coco', 'age': 6, 'salary': 10000000000})
  Person3.fromJson(Map<String, Object> data) {
    this.name = data['name'] as String;
    this.age = data['age'] as int;
    this.salary = data['salary'] as double;
    this.addr = data.putIfAbsent('addr', () => "N/A") as String;
  }
}

// Constant constructor is a constructor that creates a constant object.
// A constant object is an object whose value cannot be changed. A constant constructor is declared using the keyword const.
// Improves the performance of the program.
// fields must have final keyword

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

void main(List<String> args) {
  var h = Hackaholic();
  // call method of class using . operator
  h.display();
  h.bye();

  h._name = "lol";   // _name is private how, it is reassigned?
  /*
  The reason is that using underscore (_) before a variable or method name makes it library private not class private. It means that the variable or method is only visible to the library in which it is declared. It is not visible to any other library. In simple words, library is one file. If you write the main method in a separate file, this will not work.
Solution

To see private properties in action, you must create a separate file for the class and import it into the main file.
   */

}