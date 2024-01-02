// one can pair positional with optional and positional with named parameter

// positional with named parameter
void getFullName(String fname, {String? lname = 'Gopalan'}) {
  print('$fname, $lname');
}

void main(List<String> args) {
  // invalid call
  // getFullName();

  // valid calls
  getFullName('Shiro');

  getFullName('Shiro', lname: null);
  getFullName('Shiro', lname: 'Bhrama');
}
