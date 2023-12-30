// flatMap -> unwrapping optional values

extension FlatMap<T> on T? {
  R? flatMap<R>(R? Function(T) callback) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}

void main(List<String> args) {
  String? firstName = 'Shiro';
  //String lastName = 'Ram';
  String? lastName = null;

  final name = firstName
          .flatMap((fname) => lastName.flatMap((lname) => '$fname $lname')) ??
      'Either First or lastname is null';
  print(name);
}




/*
extension FlatMap<T> on T? {
  R? flatMap<R>(R? Function(T) callback) {
    if (this == null) {
      return null;
    } else {
      return callback(this);  // result in error
    }
  }
}


In Dart, all types implicitly inherit from Object. So, when you define an extension on Object?, 
it's essentially an extension on any nullable type. 
Dart allows calling methods on nullable types when the method is defined on Object.

In contrast, when you define an extension on a generic type T?, Dart treats T? more strictly
because it doesn't implicitly assume that T is an Object. Therefore, calling a method on T? 
directly is restricted to prevent potential runtime errors.

*/
