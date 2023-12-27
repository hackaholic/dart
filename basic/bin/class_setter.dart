/*
Getter is used to get the value of a property. It is mostly used to access a private property’s value.
Getter provide explicit read access to an object properties.

Setter is used to set the value of a property. It is mostly used to update a private property’s value.
Setter provide explicit write access to an object properties.
 */

class Student {
  late final String _firstname;
  late final String _lastname;
  late final int? _age;

  String get  fullname => this._firstname + " " + this._lastname;
  set firstname(String firstname) => this._firstname = firstname;
  set lastname(String lastname) => this._lastname = lastname;
  set age(int age) => this._age = age;
}

void main() {
  Student s1 = Student();
  s1.firstname = "Coco";
  s1.lastname = "Gopal";
  s1.age = 6;
  print("fullname: ${s1.fullname}");
}