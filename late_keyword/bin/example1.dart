/*
the late keyword is used to indicate that a non-nullable variable will be initialized later in the code. 
if the non-nullable variable does not initialize before it using, it raised an error.
*/

late String name;
void main(List<String> args) {
  try {
    print(name);
  } catch (e) {
    print(e);
  }

  name = 'Niko';
  print(name);
}
