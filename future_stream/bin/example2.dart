// Thorw and catch exception Future

void main(List<String> args) async {

  try {
    print(await getFullName(firstName: "Coco", lastName: "Gopalan"));
    print(await getFullName(firstName: "", lastName: "Gopalan"));
  } on FirstOrLastNameMissingException catch(e) {
    print('First or last name missing $e');
  } catch(e) {
    print(e);
  }
}

Future<String> getFullName({required String firstName, required String lastName}) {
  if(firstName.isEmpty || lastName.isEmpty) {
    throw FirstOrLastNameMissingException();
  }
  else {
    return Future.value('$firstName $lastName');
  }
}

class FirstOrLastNameMissingException implements Exception {
  const FirstOrLastNameMissingException();
}