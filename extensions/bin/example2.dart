//  By using T extends num, you are restricting the extension's usage to iterables that contain numeric types.
// This constraint makes sense in the context of calculating the sum, as it wouldn't make sense to sum elements if they are not numeric.

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((value, element) => value + element as T);
}

// void main(List<String> args) {
//   final sumOfIntegers = [1, 2, 3, 4].sum;
//   final sumOfDoubles = [2.2, 3.3, 4.4].sum;
//   print('$sumOfIntegers, $sumOfDoubles');
// }

extension SumExtension<T> on Iterable<T> {
  T get sumgenric => reduce((value, element) {
        if ((value is num) && (element is num)) {
          return (value + element) as T;
        } else {
          return '$value$element' as T;
        }
      });
}

void main() {
  final sumInt = [1, 2, 3, 4].sum;
  final sumDoubles = [1.1, 2.2, 3.3].sum;
  print('$sumInt, $sumDoubles');

  print('-----------------------------');
  final sumOfIntegers = [1, 2, 3, 4].sumgenric;
  final sumOfDoubles = [2.2, 3.3, 4.4].sumgenric;
  final concatenatedStrings = <String>['Hello', ' ', 'World'].sumgenric;

  print('$sumOfIntegers, $sumOfDoubles, $concatenatedStrings');
}
