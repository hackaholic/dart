const ages = [5, 7, 8, 3, 2];
const names = ['Coco', 'Shiro', 'Kiki', 'Giner', 'Raya'];
const distances = [3.1, 10.2, 1.3, 4.2];

int isLessThan<T extends Comparable>(T a, T b) => a.compareTo(b);
int isGreaterThan<T extends Comparable>(T a, T b) => b.compareTo(a);

void sort({required bool ascending}) {
  final comparator = ascending ? isLessThan : isGreaterThan;
  // ... is spread operator
  // .. is cascade operator
  print([...ages]..sort(comparator));
  print([...names]..sort(comparator));
  print([...distances]..sort(comparator));
}

void main(List<String> args) {
  sort(ascending: false);
  sort(ascending: true);
}
