/*
 Anonymous function:
 Most functions are named, such as main(). You can also create a nameless function called an anonymous function, or sometimes a lambda or closure.
  You might assign an anonymous function to a variable so that, for example, you can add or remove it from a collection.

An anonymous function looks similar to a named function—zero or more parameters, separated by commas and optional type annotations, between parentheses.

The code block that follows contains the function’s body:

([[Type] param1[, …]]) {
  codeBlock;
};
 */

void main() {
  var mylist = [1, 2, 3, 4];
  mylist.forEach((element) {
    print("element ${element*2}");
  });

  // above can be replaced with short hand stype, as it contains only single return expression
  mylist.forEach((element) => print(element));

  var pets = ['Niko', 'Ginger', 'Kiki', 'Raya', 'Batman'];
  pets.map((e) => e.toUpperCase()).forEach((element) {
    print("Element -> $element, ${element.length}");
  });

  
}