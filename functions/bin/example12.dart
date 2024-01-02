void makeUpperCase([String? name, String lname = 'Gopalan']) {
  print('${name?.toUpperCase()}, ${lname.toLowerCase()}');
}

void main(List<String> args) {
  makeUpperCase();
  makeUpperCase(null);
  makeUpperCase('Ginger');
  makeUpperCase('Niko', 'Ganesha');
  makeUpperCase(null, 'BlackHole');
  // makeUpperCase('Shiro', null);  // invalid call
}
