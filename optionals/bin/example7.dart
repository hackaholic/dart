void main(List<String> args) {
  try {
    final String? firstName = null;
    // for to read the value using ! even its null
    // if the variable is null then programe will crash.
    print(firstName!);
    // Better use below: null Safety;
    print(firstName ?? 'No firstName found');
  } catch (e) {
    print(e);
  }
}
