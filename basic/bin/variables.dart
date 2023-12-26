void main() {

  // creating variables
  // The variable called a contains a reference to a String object with a value of “Hello”.
  var a = "Hello";
  print(a);

  // Explicit declaration
  String b = "World";
  print("$a $b");

  //  If an object isn’t restricted to a single type, specify the Object type (or dynamic if necessary).
  Object c = "Ok Dynamic";
  print(c);


  /*
  Null safety prevents an error that results from unintentional access of variables set to null.
  The error is called a null dereference error. A null dereference error occurs when you access
  a property or call a method on an expression that evaluates to null. An exception to this rule
  is when null supports the property or method, like toString() or hashCode. With null safety, the
   Dart compiler detects these potential errors at compile time.



   String? name  // Nullable type. Can be `null` or string.

   String name   // Non-nullable type. Cannot be `null` but can be string.

   You must initialize variables before using them. Nullable variables default to null, so they are initialized by default.
   Dart doesn’t set initial values to non-nullable types. It forces you to set an initial value
   */

  String? mystr;
  assert(mystr == null);   //  Production code ignores the assert() call
  print("Null by default when used  ?");

  // String mystr;  result in error if not initialized.

  /*
  Late variables

The late modifier has two use cases:

    Declaring a non-nullable variable that’s initialized after its declaration.
    Lazily initializing a variable.

Often Dart’s control flow analysis can detect when a non-nullable variable is set to a non-null value before it’s used,
but sometimes analysis fails. Two common cases are top-level variables and instance variables:
Dart often can’t determine whether they’re set, so it doesn’t try.

If you’re sure that a variable is set before it’s used, but Dart disagrees, you can fix the error by marking the variable as late:
If you fail to initialize a late variable, a runtime error occurs when the variable is used.

   */

  late String hello;
  hello = "ok";
  print(hello);

  /*
  Final and const

If you never intend to change a variable, use final or const, either instead of var or in addition to a type.
A final variable can be set only once; a const variable is a compile-time constant. (Const variables are implicitly final.)
   */

  const k = 10;
  print("k -> $k");

  // k = 100;   Error: Can't assign to the const variable 'k'.



  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere

  /*
final variable = SomeClass(); // The object is final, but fields can be changed.
const constant = SomeClass(); // The object and its fields are immutable.
For variable, the object is final, so you cannot change its reference, but you can modify its fields:
variable.someField = newValue; // Valid
variable.someField = newValue; // Valid
For constant, both the object and its fields are const and cannot be changed:
constant.someField = newValue; // Error: Const variables can't have fields assigned.

When using const with collections, all elements within the collection must also be const. For instance:
const myList = [1, 2, 3]; // This will give an error unless the elements are also const.

   */

}