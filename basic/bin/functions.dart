/*
Dart is a true object-oriented language, so even functions are objects and have a type, Function.
This means that functions can be assigned to variables or passed as arguments to other functions.
You can also call an instance of a Dart class as if it were a function

A function can have any number of required positional parameters.
 These can be followed either by named parameters or by optional positional parameters (but not both).
 Named parameters are optional unless they’re explicitly marked as required.
  Flutter widget constructors—use only named parameters, even for parameters that are mandatory.
 */

// For functions that contain just one expression, you can use a shorthand syntax:
void test() => print("Hello");
// The => expr syntax is a shorthand for { return expr; }. The => notation is sometimes referred to as arrow syntax.

// you can define a function with required positional parameters.
// These parameters must be provided in the same order as they are declared.
void positional_paramater(int a, String b) {
  print("func_paramater -> $a, $b");
}

/* Named Parameter:
Named parameters are specified by name when calling a function. They are enclosed in curly braces {}
When calling a function, you can specify named arguments using paramName: value.

To define a default value for a named parameter besides null, use = to specify a default value
 */

void named_parameter_null({int? a, int? b}) {
  print("named_parameter_null $a, $b");
}

// To define a default value for a named parameter besides null, use = to specify a default value
void named_parameter(int a, {int b=10, int c = 20}) {
  print("named_parameter -> $a, $b, $c");
}


/*
Optional positional parameters

Wrapping a set of function parameters in [] marks them as optional positional parameters.
If you don’t provide a default value, their types must be nullable as their default value will be null:
 */

void optional_parameter(int a, [String? b]) {
  print("Optional parameter $a, $b");
}

void optional_parameter1(int a, [String? b = "Ok"]) {
  print("Optional parameter $a, $b");
}

void printElement(int a) {
  print(a);
}

/*
Every app must have a top-level main() function, which serves as the entrypoint to the app.
The main() function returns void and has an optional List<String> parameter for arguments.
 */
void main(List<String> args) {
  print(args);    // Set argument using Run-> Edit Configuration
  test();
  positional_paramater(1, "Hello");
  named_parameter_null(a:1, b:2);
  named_parameter(1, b:3, c:5);
  optional_parameter(-2, "hello");
  optional_parameter(-9);
  optional_parameter1(10);

  // Passing function as parameter
  var mylist = [1, 2, 3,4, 5];
  mylist.forEach(printElement);


}


